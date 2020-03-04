
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name hellow -dir "C:/xilinx_tutorial/hellow/planAhead_run_4" -part xc3s400ft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "toplevel.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {toplevel.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top toplevel $srcset
add_files [list {toplevel.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400ft256-4
