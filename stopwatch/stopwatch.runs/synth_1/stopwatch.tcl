# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.cache/wt [current_project]
set_property parent.project_path C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/sources_1/new/global.v
set_property file_type "Verilog Header" [get_files C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/sources_1/new/global.v]
read_verilog -library xil_defaultlib {
  C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/sources_1/new/downcounter.v
  C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/sources_1/new/fsm.v
  C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/sources_1/new/scan_ctl.v
  C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/sources_1/new/freqdiv27.v
  C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/sources_1/new/display.v
  C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/sources_1/new/downcounter_2d.v
  C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/sources_1/new/stopwatch.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/constrs_1/new/stopwatch.xdc
set_property used_in_implementation false [get_files C:/Users/Alvin/Documents/LogicDesignLabMonday/stopwatch/stopwatch.srcs/constrs_1/new/stopwatch.xdc]


synth_design -top stopwatch -part xc7a35tcpg236-1


write_checkpoint -force -noxdef stopwatch.dcp

catch { report_utilization -file stopwatch_utilization_synth.rpt -pb stopwatch_utilization_synth.pb }
