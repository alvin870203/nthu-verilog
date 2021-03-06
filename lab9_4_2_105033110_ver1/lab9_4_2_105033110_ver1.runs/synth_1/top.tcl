# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Alvin/Documents/LogicDesignLabMonday/lab9_4_2_105033110_ver1/lab9_4_2_105033110_ver1.cache/wt [current_project]
set_property parent.project_path C:/Users/Alvin/Documents/LogicDesignLabMonday/lab9_4_2_105033110_ver1/lab9_4_2_105033110_ver1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Alvin/Documents/LogicDesignLabMonday/lab9_4_2_105033110_ver1/lab9_4_2_105033110_ver1.srcs/sources_1/new/Ps2Interface.v
  C:/Users/Alvin/Documents/LogicDesignLabMonday/lab9_4_2_105033110_ver1/lab9_4_2_105033110_ver1.srcs/sources_1/new/KeyboardCtrl.v
  C:/Users/Alvin/Documents/LogicDesignLabMonday/lab9_4_2_105033110_ver1/lab9_4_2_105033110_ver1.srcs/sources_1/new/keyboard_ctl.v
  C:/Users/Alvin/Documents/LogicDesignLabMonday/lab9_4_2_105033110_ver1/lab9_4_2_105033110_ver1.srcs/sources_1/new/KeyboardDecoder.v
  C:/Users/Alvin/Documents/LogicDesignLabMonday/lab9_4_2_105033110_ver1/lab9_4_2_105033110_ver1.srcs/sources_1/new/top.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Alvin/Documents/LogicDesignLabMonday/lab9_4_2_105033110_ver1/lab9_4_2_105033110_ver1.srcs/constrs_1/new/top.xdc
set_property used_in_implementation false [get_files C:/Users/Alvin/Documents/LogicDesignLabMonday/lab9_4_2_105033110_ver1/lab9_4_2_105033110_ver1.srcs/constrs_1/new/top.xdc]


synth_design -top top -part xc7a35tcpg236-1


write_checkpoint -force -noxdef top.dcp

catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
