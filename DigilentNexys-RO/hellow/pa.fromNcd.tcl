
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name hellow -dir "C:/xilinx_tutorial/hellow/planAhead_run_5" -part xc3s400ft256-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/xilinx_tutorial/hellow/toplevel.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/xilinx_tutorial/hellow} }
set_property target_constrs_file "toplevel.ucf" [current_fileset -constrset]
add_files [list {toplevel.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/xilinx_tutorial/hellow/toplevel.ncd"
if {[catch {read_twx -name results_1 -file "C:/xilinx_tutorial/hellow/toplevel.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/xilinx_tutorial/hellow/toplevel.twx\": $eInfo"
}
