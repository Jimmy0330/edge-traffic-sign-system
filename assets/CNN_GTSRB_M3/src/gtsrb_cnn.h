#pragma once
#include <ap_int.h>

// ========== 參數定義（對齊 Model 3） ==========
#define IN_H   30
#define IN_W   30
#define IN_C    3

// Conv1: 3x3, 16
#define C1_KH   3
#define C1_KW   3
#define C1_IN   3
#define C1_OUT 16
#define C1_OH  (IN_H - C1_KH + 1)   // 28
#define C1_OW  (IN_W - C1_KW + 1)   // 28

// Pool1: 2x2 VALID
#define P1_KH   2
#define P1_KW   2
#define P1_IN   C1_OUT
#define P1_OH   (C1_OH / 2)         // 14
#define P1_OW   (C1_OW / 2)         // 14

// Conv2: 3x3, 32
#define C2_KH   3
#define C2_KW   3
#define C2_IN   P1_IN
#define C2_OUT 32
#define C2_OH  (P1_OH - C2_KH + 1)  // 12
#define C2_OW  (P1_OW - C2_KW + 1)  // 12

// Pool2: 2x2
#define P2_KH   2
#define P2_KW   2
#define P2_IN   C2_OUT
#define P2_OH   (C2_OH / 2)         // 6
#define P2_OW   (C2_OW / 2)         // 6

// Conv3: 3x3, 64
#define C3_KH   3
#define C3_KW   3
#define C3_IN   P2_IN
#define C3_OUT 64
#define C3_OH  (P2_OH - C3_KH + 1)  // 4
#define C3_OW  (P2_OW - C3_KW + 1)  // 4

// Pool3: 2x2
#define P3_KH   2
#define P3_KW   2
#define P3_IN   C3_OUT
#define P3_OH   (C3_OH / 2)         // 2
#define P3_OW   (C3_OW / 2)         // 2

// FC1: 2*2*64 -> 64
#define FC1_IN  (P3_OH * P3_OW * P3_IN) // 2*2*64 = 256
#define FC1_OUT 64

// FC2: 64 -> 43 (GTSRB)
#define FC2_IN  FC1_OUT
#define FC2_OUT 43

// ========== 型別（先用浮點，驗證容易） ==========
typedef float Dtype_f; // feature / accum / mul 同 float
typedef float Dtype_w; // weights & bias

// ========== Top 函式宣告 ==========
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
);