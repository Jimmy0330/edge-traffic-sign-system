vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_13
vlib riviera/zynq_ultra_ps_e_vip_v1_0_13
vlib riviera/xil_defaultlib
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_18
vlib riviera/floating_point_v7_1_15
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_crossbar_v2_1_28
vlib riviera/axi_protocol_converter_v2_1_27
vlib riviera/axi_clock_converter_v2_1_26
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/axi_dwidth_converter_v2_1_27
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xlconstant_v1_1_7
vlib riviera/smartconnect_v1_0

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap zynq_ultra_ps_e_vip_v1_0_13 riviera/zynq_ultra_ps_e_vip_v1_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 riviera/mult_gen_v12_0_18
vmap floating_point_v7_1_15 riviera/floating_point_v7_1_15
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 riviera/axi_crossbar_v2_1_28
vmap axi_protocol_converter_v2_1_27 riviera/axi_protocol_converter_v2_1_27
vmap axi_clock_converter_v2_1_26 riviera/axi_clock_converter_v2_1_26
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_27 riviera/axi_dwidth_converter_v2_1_27
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap smartconnect_v1_0 riviera/smartconnect_v1_0

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_13  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_c1_out_RAM_2P_BRAM_1R1W.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_c2_out_RAM_2P_BRAM_1R1W.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_c3_out_RAM_2P_BRAM_1R1W.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_control_s_axi.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_conv_valid_relu.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_conv_valid_relu_1.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_conv_valid_relu_2.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_fadd_32ns_32ns_32_5_full_dsp_1.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_fc1_out_RAM_2P_BRAM_1R1W.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_fcmp_32ns_32ns_1_2_no_dsp_1.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_flow_control_loop_pipe_sequential_init.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_fmul_32ns_32ns_32_4_max_dsp_1.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_gmem0_m_axi.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_gmem1_m_axi.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_gmem2_m_axi.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_gmem3_m_axi.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_gmem4_m_axi.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_gmem5_m_axi.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_gtsrb_cnn_Pipeline_VITIS_LOOP_101_1.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_linear.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_linear_2.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_linear_2_Pipeline_VITIS_LOOP_83_1.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_linear_Pipeline_VITIS_LOOP_86_2.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_maxpool2x2_valid.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_maxpool2x2_valid_1.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_maxpool2x2_valid_2.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_mul_5ns_8ns_12_1_1.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_p1_out_RAM_2P_BRAM_1R1W.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_p2_out_RAM_2P_BRAM_1R1W.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn_p3_out_RAM_2P_BRAM_1R1W.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/verilog/gtsrb_cnn.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/ip/gtsrb_cnn_fadd_32ns_32ns_32_5_full_dsp_1_ip.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/ip/gtsrb_cnn_fcmp_32ns_32ns_1_2_no_dsp_1_ip.v" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/835b/hdl/ip/gtsrb_cnn_fmul_32ns_32ns_32_4_max_dsp_1_ip.v" \
"../../../bd/design_1/ip/design_1_gtsrb_cnn_0_0/sim/design_1_gtsrb_cnn_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_26  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_27  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_ds_1/sim/design_1_auto_ds_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_rst_ps8_0_100M_0/sim/design_1_rst_ps8_0_100M_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_48ac_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48ac_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48ac_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48ac_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48ac_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48ac_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48ac_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48ac_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48ac_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48ac_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48ac_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48ac_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48ac_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_48ac_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_48ac_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_48ac_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_48ac_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_48ac_sarn_1.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_48ac_srn_1.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_48ac_s02mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_48ac_s02tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_48ac_s02sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_48ac_s02a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_48ac_sarn_2.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_48ac_srn_2.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_48ac_s03mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_48ac_s03tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_48ac_s03sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_48ac_s03a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_48ac_sarn_3.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_48ac_srn_3.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_48ac_s04mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_48ac_s04tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_48ac_s04sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_48ac_s04a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_48ac_sarn_4.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_48ac_srn_4.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_48ac_s05mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_48ac_s05tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_48ac_s05sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_48ac_s05a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_48ac_sarn_5.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_48ac_srn_5.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_48ac_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_48ac_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_48ac_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_48ac_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_48ac_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_48ac_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_48ac_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_48ac_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_48ac_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_48ac_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/abef/hdl" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../CNN_GTSRB.gen/sources_1/bd/design_1/ip/design_1_gtsrb_cnn_0_0/drivers/gtsrb_cnn_v1_0/src" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/sim/bd_48ac.v" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/sim/design_1_smartconnect_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

