// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of w_c1
//        bit 31~0 - w_c1[31:0] (Read/Write)
// 0x14 : Data signal of w_c1
//        bit 31~0 - w_c1[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of b_c1
//        bit 31~0 - b_c1[31:0] (Read/Write)
// 0x20 : Data signal of b_c1
//        bit 31~0 - b_c1[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of w_c2
//        bit 31~0 - w_c2[31:0] (Read/Write)
// 0x2c : Data signal of w_c2
//        bit 31~0 - w_c2[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of b_c2
//        bit 31~0 - b_c2[31:0] (Read/Write)
// 0x38 : Data signal of b_c2
//        bit 31~0 - b_c2[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of w_c3
//        bit 31~0 - w_c3[31:0] (Read/Write)
// 0x44 : Data signal of w_c3
//        bit 31~0 - w_c3[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of b_c3
//        bit 31~0 - b_c3[31:0] (Read/Write)
// 0x50 : Data signal of b_c3
//        bit 31~0 - b_c3[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of w_fc1
//        bit 31~0 - w_fc1[31:0] (Read/Write)
// 0x5c : Data signal of w_fc1
//        bit 31~0 - w_fc1[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of b_fc1
//        bit 31~0 - b_fc1[31:0] (Read/Write)
// 0x68 : Data signal of b_fc1
//        bit 31~0 - b_fc1[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of w_fc2
//        bit 31~0 - w_fc2[31:0] (Read/Write)
// 0x74 : Data signal of w_fc2
//        bit 31~0 - w_fc2[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of b_fc2
//        bit 31~0 - b_fc2[31:0] (Read/Write)
// 0x80 : Data signal of b_fc2
//        bit 31~0 - b_fc2[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of feature_in
//        bit 31~0 - feature_in[31:0] (Read/Write)
// 0x8c : Data signal of feature_in
//        bit 31~0 - feature_in[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of logits_out
//        bit 31~0 - logits_out[31:0] (Read/Write)
// 0x98 : Data signal of logits_out
//        bit 31~0 - logits_out[63:32] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of top1
//        bit 31~0 - top1[31:0] (Read/Write)
// 0xa4 : Data signal of top1
//        bit 31~0 - top1[63:32] (Read/Write)
// 0xa8 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL         0x00
#define CONTROL_ADDR_GIE             0x04
#define CONTROL_ADDR_IER             0x08
#define CONTROL_ADDR_ISR             0x0c
#define CONTROL_ADDR_W_C1_DATA       0x10
#define CONTROL_BITS_W_C1_DATA       64
#define CONTROL_ADDR_B_C1_DATA       0x1c
#define CONTROL_BITS_B_C1_DATA       64
#define CONTROL_ADDR_W_C2_DATA       0x28
#define CONTROL_BITS_W_C2_DATA       64
#define CONTROL_ADDR_B_C2_DATA       0x34
#define CONTROL_BITS_B_C2_DATA       64
#define CONTROL_ADDR_W_C3_DATA       0x40
#define CONTROL_BITS_W_C3_DATA       64
#define CONTROL_ADDR_B_C3_DATA       0x4c
#define CONTROL_BITS_B_C3_DATA       64
#define CONTROL_ADDR_W_FC1_DATA      0x58
#define CONTROL_BITS_W_FC1_DATA      64
#define CONTROL_ADDR_B_FC1_DATA      0x64
#define CONTROL_BITS_B_FC1_DATA      64
#define CONTROL_ADDR_W_FC2_DATA      0x70
#define CONTROL_BITS_W_FC2_DATA      64
#define CONTROL_ADDR_B_FC2_DATA      0x7c
#define CONTROL_BITS_B_FC2_DATA      64
#define CONTROL_ADDR_FEATURE_IN_DATA 0x88
#define CONTROL_BITS_FEATURE_IN_DATA 64
#define CONTROL_ADDR_LOGITS_OUT_DATA 0x94
#define CONTROL_BITS_LOGITS_OUT_DATA 64
#define CONTROL_ADDR_TOP1_DATA       0xa0
#define CONTROL_BITS_TOP1_DATA       64
