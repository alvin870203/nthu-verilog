# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Alvin/Documents/LogicDesignLabMonday/pre_lab3_1_105033110_ver1/pre_lab3_1_105033110_ver1.cache/wt [current_project]
set_property parent.project_path C:/Users/Alvin/Documents/LogicDesignLabMonday/pre_lab3_1_105033110_ver1/pre_lab3_1_105033110_ver1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib C:/Users/Alvin/Documents/LogicDesignLabMonday/pre_lab3_1_105033110_ver1/pre_lab3_1_105033110_ver1.srcs/sources_1/new/bincnt.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top bincnt -part xc7a35tcpg236-1


write_checkpoint -force -noxdef bincnt.dcp

catch { report_utilization -file bincnt_utilization_synth.rpt -pb bincnt_utilization_synth.pb }
