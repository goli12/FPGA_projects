
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name module_2 -dir "C:/Users/Andrew/Documents/ISE Projects/Hamsterworks_FPGA_course/module_2/planAhead_run_1" -part xc6slx16csg324-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Switches_LEDs.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Switches_LEDs.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Switches_LEDs $srcset
add_files [list {Switches_LEDs.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-2
