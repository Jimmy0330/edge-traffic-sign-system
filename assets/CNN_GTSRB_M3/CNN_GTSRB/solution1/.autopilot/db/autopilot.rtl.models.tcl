set SynModuleInfo {
  {SRCNAME conv_valid_relu MODELNAME conv_valid_relu RTLNAME gtsrb_cnn_conv_valid_relu
    SUBMODULES {
      {MODELNAME gtsrb_cnn_mul_5ns_8ns_12_1_1 RTLNAME gtsrb_cnn_mul_5ns_8ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_flow_control_loop_pipe_sequential_init RTLNAME gtsrb_cnn_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gtsrb_cnn_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME maxpool2x2_valid.2 MODELNAME maxpool2x2_valid_2 RTLNAME gtsrb_cnn_maxpool2x2_valid_2}
  {SRCNAME conv_valid_relu.2 MODELNAME conv_valid_relu_2 RTLNAME gtsrb_cnn_conv_valid_relu_2}
  {SRCNAME maxpool2x2_valid.1 MODELNAME maxpool2x2_valid_1 RTLNAME gtsrb_cnn_maxpool2x2_valid_1}
  {SRCNAME conv_valid_relu.1 MODELNAME conv_valid_relu_1 RTLNAME gtsrb_cnn_conv_valid_relu_1}
  {SRCNAME maxpool2x2_valid MODELNAME maxpool2x2_valid RTLNAME gtsrb_cnn_maxpool2x2_valid}
  {SRCNAME linear_Pipeline_VITIS_LOOP_86_2 MODELNAME linear_Pipeline_VITIS_LOOP_86_2 RTLNAME gtsrb_cnn_linear_Pipeline_VITIS_LOOP_86_2}
  {SRCNAME linear MODELNAME linear RTLNAME gtsrb_cnn_linear}
  {SRCNAME linear.2_Pipeline_VITIS_LOOP_83_1 MODELNAME linear_2_Pipeline_VITIS_LOOP_83_1 RTLNAME gtsrb_cnn_linear_2_Pipeline_VITIS_LOOP_83_1}
  {SRCNAME linear.2 MODELNAME linear_2 RTLNAME gtsrb_cnn_linear_2}
  {SRCNAME gtsrb_cnn_Pipeline_VITIS_LOOP_101_1 MODELNAME gtsrb_cnn_Pipeline_VITIS_LOOP_101_1 RTLNAME gtsrb_cnn_gtsrb_cnn_Pipeline_VITIS_LOOP_101_1}
  {SRCNAME gtsrb_cnn MODELNAME gtsrb_cnn RTLNAME gtsrb_cnn IS_TOP 1
    SUBMODULES {
      {MODELNAME gtsrb_cnn_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME gtsrb_cnn_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME gtsrb_cnn_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME gtsrb_cnn_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_c1_out_RAM_2P_BRAM_1R1W RTLNAME gtsrb_cnn_c1_out_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_p1_out_RAM_2P_BRAM_1R1W RTLNAME gtsrb_cnn_p1_out_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_c2_out_RAM_2P_BRAM_1R1W RTLNAME gtsrb_cnn_c2_out_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_p2_out_RAM_2P_BRAM_1R1W RTLNAME gtsrb_cnn_p2_out_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_c3_out_RAM_2P_BRAM_1R1W RTLNAME gtsrb_cnn_c3_out_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_p3_out_RAM_2P_BRAM_1R1W RTLNAME gtsrb_cnn_p3_out_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_fc1_out_RAM_2P_BRAM_1R1W RTLNAME gtsrb_cnn_fc1_out_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gtsrb_cnn_gmem0_m_axi RTLNAME gtsrb_cnn_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gtsrb_cnn_gmem1_m_axi RTLNAME gtsrb_cnn_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gtsrb_cnn_gmem2_m_axi RTLNAME gtsrb_cnn_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gtsrb_cnn_gmem3_m_axi RTLNAME gtsrb_cnn_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gtsrb_cnn_gmem4_m_axi RTLNAME gtsrb_cnn_gmem4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gtsrb_cnn_gmem5_m_axi RTLNAME gtsrb_cnn_gmem5_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gtsrb_cnn_control_s_axi RTLNAME gtsrb_cnn_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
