
set TopModule "gtsrb_cnn"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix gtsrb_cnn_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xczu5eg:-sfvc784:-1-e
set SourceFiles {sc {} c ../../src/gtsrb_cnn.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile C:/Xilinx/pynq-zu/HLS/CNN_GTSRB/CNN_GTSRB/solution1/solution1.directive
set TBFiles {verilog {../../src/record/weight_9.dat ../../src/record/weight_8.dat ../../src/record/weight_7.dat ../../src/record/weight_6.dat ../../src/record/weight_5.dat ../../src/record/weight_4.dat ../../src/record/weight_3.dat ../../src/record/weight_2.dat ../../src/record/weight_1.dat ../../src/record/weight_0.dat ../../src/test_gtsrb_cnn.cpp ../../src/HLS_TB/input_image.dat} bc {../../src/record/weight_9.dat ../../src/record/weight_8.dat ../../src/record/weight_7.dat ../../src/record/weight_6.dat ../../src/record/weight_5.dat ../../src/record/weight_4.dat ../../src/record/weight_3.dat ../../src/record/weight_2.dat ../../src/record/weight_1.dat ../../src/record/weight_0.dat ../../src/test_gtsrb_cnn.cpp ../../src/HLS_TB/input_image.dat} sc {../../src/record/weight_9.dat ../../src/record/weight_8.dat ../../src/record/weight_7.dat ../../src/record/weight_6.dat ../../src/record/weight_5.dat ../../src/record/weight_4.dat ../../src/record/weight_3.dat ../../src/record/weight_2.dat ../../src/record/weight_1.dat ../../src/record/weight_0.dat ../../src/test_gtsrb_cnn.cpp ../../src/HLS_TB/input_image.dat} vhdl {../../src/record/weight_9.dat ../../src/record/weight_8.dat ../../src/record/weight_7.dat ../../src/record/weight_6.dat ../../src/record/weight_5.dat ../../src/record/weight_4.dat ../../src/record/weight_3.dat ../../src/record/weight_2.dat ../../src/record/weight_1.dat ../../src/record/weight_0.dat ../../src/test_gtsrb_cnn.cpp ../../src/HLS_TB/input_image.dat} c {} cas {../../src/record/weight_9.dat ../../src/record/weight_8.dat ../../src/record/weight_7.dat ../../src/record/weight_6.dat ../../src/record/weight_5.dat ../../src/record/weight_4.dat ../../src/record/weight_3.dat ../../src/record/weight_2.dat ../../src/record/weight_1.dat ../../src/record/weight_0.dat ../../src/test_gtsrb_cnn.cpp ../../src/HLS_TB/input_image.dat}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0
