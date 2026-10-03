# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name fc1_out \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename fc1_out \
    op interface \
    ports { fc1_out_address0 { O 6 vector } fc1_out_ce0 { O 1 bit } fc1_out_q0 { I 32 vector } fc1_out_address1 { O 6 vector } fc1_out_ce1 { O 1 bit } fc1_out_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fc1_out'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name gmem4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem4 \
    op interface \
    ports { m_axi_gmem4_AWVALID { O 1 bit } m_axi_gmem4_AWREADY { I 1 bit } m_axi_gmem4_AWADDR { O 64 vector } m_axi_gmem4_AWID { O 1 vector } m_axi_gmem4_AWLEN { O 32 vector } m_axi_gmem4_AWSIZE { O 3 vector } m_axi_gmem4_AWBURST { O 2 vector } m_axi_gmem4_AWLOCK { O 2 vector } m_axi_gmem4_AWCACHE { O 4 vector } m_axi_gmem4_AWPROT { O 3 vector } m_axi_gmem4_AWQOS { O 4 vector } m_axi_gmem4_AWREGION { O 4 vector } m_axi_gmem4_AWUSER { O 1 vector } m_axi_gmem4_WVALID { O 1 bit } m_axi_gmem4_WREADY { I 1 bit } m_axi_gmem4_WDATA { O 32 vector } m_axi_gmem4_WSTRB { O 4 vector } m_axi_gmem4_WLAST { O 1 bit } m_axi_gmem4_WID { O 1 vector } m_axi_gmem4_WUSER { O 1 vector } m_axi_gmem4_ARVALID { O 1 bit } m_axi_gmem4_ARREADY { I 1 bit } m_axi_gmem4_ARADDR { O 64 vector } m_axi_gmem4_ARID { O 1 vector } m_axi_gmem4_ARLEN { O 32 vector } m_axi_gmem4_ARSIZE { O 3 vector } m_axi_gmem4_ARBURST { O 2 vector } m_axi_gmem4_ARLOCK { O 2 vector } m_axi_gmem4_ARCACHE { O 4 vector } m_axi_gmem4_ARPROT { O 3 vector } m_axi_gmem4_ARQOS { O 4 vector } m_axi_gmem4_ARREGION { O 4 vector } m_axi_gmem4_ARUSER { O 1 vector } m_axi_gmem4_RVALID { I 1 bit } m_axi_gmem4_RREADY { O 1 bit } m_axi_gmem4_RDATA { I 32 vector } m_axi_gmem4_RLAST { I 1 bit } m_axi_gmem4_RID { I 1 vector } m_axi_gmem4_RFIFONUM { I 9 vector } m_axi_gmem4_RUSER { I 1 vector } m_axi_gmem4_RRESP { I 2 vector } m_axi_gmem4_BVALID { I 1 bit } m_axi_gmem4_BREADY { O 1 bit } m_axi_gmem4_BRESP { I 2 vector } m_axi_gmem4_BID { I 1 vector } m_axi_gmem4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name W \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_W \
    op interface \
    ports { W { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b \
    op interface \
    ports { b { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name gmem5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem5 \
    op interface \
    ports { m_axi_gmem5_AWVALID { O 1 bit } m_axi_gmem5_AWREADY { I 1 bit } m_axi_gmem5_AWADDR { O 64 vector } m_axi_gmem5_AWID { O 1 vector } m_axi_gmem5_AWLEN { O 32 vector } m_axi_gmem5_AWSIZE { O 3 vector } m_axi_gmem5_AWBURST { O 2 vector } m_axi_gmem5_AWLOCK { O 2 vector } m_axi_gmem5_AWCACHE { O 4 vector } m_axi_gmem5_AWPROT { O 3 vector } m_axi_gmem5_AWQOS { O 4 vector } m_axi_gmem5_AWREGION { O 4 vector } m_axi_gmem5_AWUSER { O 1 vector } m_axi_gmem5_WVALID { O 1 bit } m_axi_gmem5_WREADY { I 1 bit } m_axi_gmem5_WDATA { O 32 vector } m_axi_gmem5_WSTRB { O 4 vector } m_axi_gmem5_WLAST { O 1 bit } m_axi_gmem5_WID { O 1 vector } m_axi_gmem5_WUSER { O 1 vector } m_axi_gmem5_ARVALID { O 1 bit } m_axi_gmem5_ARREADY { I 1 bit } m_axi_gmem5_ARADDR { O 64 vector } m_axi_gmem5_ARID { O 1 vector } m_axi_gmem5_ARLEN { O 32 vector } m_axi_gmem5_ARSIZE { O 3 vector } m_axi_gmem5_ARBURST { O 2 vector } m_axi_gmem5_ARLOCK { O 2 vector } m_axi_gmem5_ARCACHE { O 4 vector } m_axi_gmem5_ARPROT { O 3 vector } m_axi_gmem5_ARQOS { O 4 vector } m_axi_gmem5_ARREGION { O 4 vector } m_axi_gmem5_ARUSER { O 1 vector } m_axi_gmem5_RVALID { I 1 bit } m_axi_gmem5_RREADY { O 1 bit } m_axi_gmem5_RDATA { I 32 vector } m_axi_gmem5_RLAST { I 1 bit } m_axi_gmem5_RID { I 1 vector } m_axi_gmem5_RFIFONUM { I 9 vector } m_axi_gmem5_RUSER { I 1 vector } m_axi_gmem5_RRESP { I 2 vector } m_axi_gmem5_BVALID { I 1 bit } m_axi_gmem5_BREADY { O 1 bit } m_axi_gmem5_BRESP { I 2 vector } m_axi_gmem5_BID { I 1 vector } m_axi_gmem5_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name vout \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vout \
    op interface \
    ports { vout { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


