# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
w_c1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
b_c1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
w_c2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
b_c2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
w_c3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
b_c3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
w_fc1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
b_fc1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
w_fc2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
b_fc2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
feature_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
logits_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
top1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 160
	offset_end 171
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


