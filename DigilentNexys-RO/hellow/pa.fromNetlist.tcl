
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name hellow -dir "C:/xilinx_tutorial/hellow/planAhead_run_5" -part xc3s400pq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/xilinx_tutorial/hellow/toplevel.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/xilinx_tutorial/hellow} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "toplevel.ucf" [current_fileset -constrset]
add_files [list {toplevel.ucf}] -fileset [get_property constrset [current_run]]
link_design
