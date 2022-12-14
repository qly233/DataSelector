
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name shujuxuanzheqi -dir "D:/szdl/shujuxuanzheqi/planAhead_run_2" -part xc7a100tfgg484-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/szdl/shujuxuanzheqi/shujuxuanzeqi.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/szdl/shujuxuanzheqi} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "shujuxuanzeqi.ucf" [current_fileset -constrset]
add_files [list {shujuxuanzeqi.ucf}] -fileset [get_property constrset [current_run]]
link_design
