
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name module_2 -dir "C:/Users/Andrew/Documents/ISE Projects/Hamsterworks_FPGA_course/module_2/planAhead_run_2" -part xc6slx16csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Andrew/Documents/ISE Projects/Hamsterworks_FPGA_course/module_2/Switches_LEDs.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Andrew/Documents/ISE Projects/Hamsterworks_FPGA_course/module_2} }
set_property target_constrs_file "Switches_LEDs.ucf" [current_fileset -constrset]
add_files [list {Switches_LEDs.ucf}] -fileset [get_property constrset [current_run]]
link_design
