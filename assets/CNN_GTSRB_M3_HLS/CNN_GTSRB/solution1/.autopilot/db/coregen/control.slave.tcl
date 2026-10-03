dict set slaves control {ports {w_c1 {type i_ap_none width 64} b_c1 {type i_ap_none width 64} w_c2 {type i_ap_none width 64} b_c2 {type i_ap_none width 64} w_c3 {type i_ap_none width 64} b_c3 {type i_ap_none width 64} w_fc1 {type i_ap_none width 64} b_fc1 {type i_ap_none width 64} w_fc2 {type i_ap_none width 64} b_fc2 {type i_ap_none width 64} feature_in {type i_ap_none width 64} logits_out {type i_ap_none width 64} top1 {type i_ap_none width 64} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
