#include "gtsrb_cnn.h"

// ========== ?Öß?É®?ü∫?ú¨??ãÁ?óÔ?àVALID ?ç∑Á©? + ReLUÔº? ==========
static void conv_valid_relu(
    const int Hin, const int Win, const int Cin,
    const int Kh, const int Kw, const int Cout,
    const Dtype_f* __restrict feature_in,
    const Dtype_w* __restrict W,
    const Dtype_w* __restrict B,
    const int Hout, const int Wout,
    Dtype_f* __restrict feature_out
) {
#pragma HLS INLINE off
    for (int cout = 0; cout < Cout; ++cout) {
        for (int h = 0; h < Hout; ++h) {
            for (int w = 0; w < Wout; ++w) {
#pragma HLS PIPELINE II=1
                Dtype_f acc = B[cout];
                for (int kh = 0; kh < Kh; ++kh) {
                    const int ih = h + kh;
                    for (int kw = 0; kw < Kw; ++kw) {
                        const int iw = w + kw;
                        const int in_base = (ih * Win + iw) * Cin;
                        const int w_base = (kh * Kw + kw) * Cin * Cout + cout;
                        for (int cin = 0; cin < Cin; ++cin) {
                            const Dtype_f vin = feature_in[in_base + cin];
                            const Dtype_w wij = W[w_base + cin * Cout];
                            acc += vin * wij;
                        }
                    }
                }
                if (acc < 0) acc = 0;
                feature_out[(h * Wout + w) * Cout + cout] = acc;
            }
        }
    }
}

// ========== ??Â§ßÊ?†Â?? 2x2 VALIDÔºåstride=2 ==========
static void maxpool2x2_valid(
    const int Hin, const int Win, const int Cin,
    const Dtype_f* __restrict feature_in,
    Dtype_f* __restrict feature_out
) {
#pragma HLS INLINE off
    const int Hout = Hin / 2;
    const int Wout = Win / 2;
    for (int c = 0; c < Cin; ++c) {
        for (int h = 0; h < Hout; ++h) {
            for (int w = 0; w < Wout; ++w) {
#pragma HLS PIPELINE II=1
                Dtype_f m = -3.4e38f;
                const int h0 = h * 2;
                const int w0 = w * 2;
                const int idx00 = ((h0)*Win + (w0)) * Cin + c;
                const int idx01 = ((h0)*Win + (w0 + 1)) * Cin + c;
                const int idx10 = ((h0 + 1) * Win + (w0)) * Cin + c;
                const int idx11 = ((h0 + 1) * Win + (w0 + 1)) * Cin + c;
                Dtype_f v0 = feature_in[idx00];
                Dtype_f v1 = feature_in[idx01];
                Dtype_f v2 = feature_in[idx10];
                Dtype_f v3 = feature_in[idx11];
                if (v0 > m) m = v0;
                if (v1 > m) m = v1;
                if (v2 > m) m = v2;
                if (v3 > m) m = v3;
                feature_out[(h * Wout + w) * Cin + c] = m;
            }
        }
    }
}

// ========== ?Ö®???é•ÔºàReLU ?èØ?Å∏Ôº? ==========
static void linear(
    const int Fin, const int Fout,
    const Dtype_f* __restrict vin,
    const Dtype_w* __restrict W,
    const Dtype_w* __restrict b,
    const bool relu_en,
    Dtype_f* __restrict vout
) {
#pragma HLS INLINE off
    for (int j = 0; j < Fout; ++j) {
        Dtype_f acc = b[j];
        const int wbase = j;
        for (int i = 0; i < Fin; ++i) {
            acc += vin[i] * W[i * Fout + j];
        }
        if (relu_en && acc < 0) acc = 0;
        vout[j] = acc;
    }
}

// ========== ??ñÊ?Â§ßÂ?ºÁ?ÑÁ¥¢Âº? ==========
static void fmax_argmax(
    const int N, const Dtype_f* __restrict vec, int out_idx[1]
) {
#pragma HLS INLINE
    int idx = 0;
    Dtype_f m = vec[0];
    for (int i = 1; i < N; ++i) {
        Dtype_f v = vec[i];
        if (v > m) { m = v; idx = i; }
    }
    out_idx[0] = idx;
}

// ========== TopÔºöÈ?çÁΩÆ AXI ‰ªãÈù¢‰∏¶‰∏≤?é•??ÑÂ±§ ==========
void gtsrb_cnn(
    Dtype_w w_c1[C1_KH * C1_KW * C1_IN * C1_OUT],
    Dtype_w b_c1[C1_OUT],
    Dtype_w w_c2[C2_KH * C2_KW * C2_IN * C2_OUT],
    Dtype_w b_c2[C2_OUT],
    Dtype_w w_c3[C3_KH * C3_KW * C3_IN * C3_OUT],
    Dtype_w b_c3[C3_OUT],
    Dtype_w w_fc1[FC1_IN * FC1_OUT],
    Dtype_w b_fc1[FC1_OUT],
    Dtype_w w_fc2[FC2_IN * FC2_OUT],
    Dtype_w b_fc2[FC2_OUT],
    Dtype_f feature_in[IN_H * IN_W * IN_C],
    Dtype_f logits_out[FC2_OUT],
    int     top1[1]
) {
#pragma HLS INTERFACE m_axi port=w_c1 offset=slave depth=432 bundle=gmem0
#pragma HLS INTERFACE m_axi port=b_c1 offset=slave depth=16 bundle=gmem0
#pragma HLS INTERFACE m_axi port=w_c2 offset=slave depth=1536 bundle=gmem1
#pragma HLS INTERFACE m_axi port=b_c2 offset=slave depth=32 bundle=gmem1
#pragma HLS INTERFACE m_axi port=w_c3 offset=slave depth=6144 bundle=gmem2
#pragma HLS INTERFACE m_axi port=b_c3 offset=slave depth=64 bundle=gmem2
#pragma HLS INTERFACE m_axi port=w_fc1 offset=slave depth=16384 bundle=gmem3
#pragma HLS INTERFACE m_axi port=b_fc1 offset=slave depth=64 bundle=gmem3
#pragma HLS INTERFACE m_axi port=w_fc2 offset=slave depth=2752 bundle=gmem4
#pragma HLS INTERFACE m_axi port=b_fc2 offset=slave depth=43 bundle=gmem4
#pragma HLS INTERFACE m_axi port=feature_in offset=slave depth=2700 bundle=gmem5
#pragma HLS INTERFACE m_axi port=logits_out offset=slave depth=43 bundle=gmem5
#pragma HLS INTERFACE m_axi port=top1 offset=slave depth=1 bundle=gmem5

#pragma HLS INTERFACE s_axilite port=w_c1 bundle=control
#pragma HLS INTERFACE s_axilite port=b_c1 bundle=control
#pragma HLS INTERFACE s_axilite port=w_c2 bundle=control
#pragma HLS INTERFACE s_axilite port=b_c2 bundle=control
#pragma HLS INTERFACE s_axilite port=w_c3 bundle=control
#pragma HLS INTERFACE s_axilite port=b_c3 bundle=control
#pragma HLS INTERFACE s_axilite port=w_fc1 bundle=control
#pragma HLS INTERFACE s_axilite port=b_fc1 bundle=control
#pragma HLS INTERFACE s_axilite port=w_fc2 bundle=control
#pragma HLS INTERFACE s_axilite port=b_fc2 bundle=control
#pragma HLS INTERFACE s_axilite port=feature_in bundle=control
#pragma HLS INTERFACE s_axilite port=logits_out bundle=control
#pragma HLS INTERFACE s_axilite port=top1 bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    static Dtype_f c1_out[C1_OH * C1_OW * C1_OUT];
    static Dtype_f p1_out[P1_OH * P1_OW * P1_IN];
    static Dtype_f c2_out[C2_OH * C2_OW * C2_OUT];
    static Dtype_f p2_out[P2_OH * P2_OW * P2_IN];
    static Dtype_f c3_out[C3_OH * C3_OW * C3_OUT];
    static Dtype_f p3_out[P3_OH * P3_OW * P3_IN];
    static Dtype_f fc1_out[FC1_OUT];

#pragma HLS BIND_STORAGE variable=c1_out type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p1_out type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=c2_out type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p2_out type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=c3_out type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p3_out type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=fc1_out type=ram_2p impl=bram

    conv_valid_relu(IN_H, IN_W, IN_C, C1_KH, C1_KW, C1_OUT,
        feature_in, w_c1, b_c1, C1_OH, C1_OW, c1_out);
    maxpool2x2_valid(C1_OH, C1_OW, C1_OUT, c1_out, p1_out);

    conv_valid_relu(P1_OH, P1_OW, P1_IN, C2_KH, C2_KW, C2_OUT,
        p1_out, w_c2, b_c2, C2_OH, C2_OW, c2_out);
    maxpool2x2_valid(C2_OH, C2_OW, C2_OUT, c2_out, p2_out);

    conv_valid_relu(P2_OH, P2_OW, P2_IN, C3_KH, C3_KW, C3_OUT,
        p2_out, w_c3, b_c3, C3_OH, C3_OW, c3_out);
    maxpool2x2_valid(C3_OH, C3_OW, C3_OUT, c3_out, p3_out);

    linear(FC1_IN, FC1_OUT, p3_out, w_fc1, b_fc1, true, fc1_out);
    linear(FC2_IN, FC2_OUT, fc1_out, w_fc2, b_fc2, false, logits_out);

    fmax_argmax(FC2_OUT, logits_out, top1);
}