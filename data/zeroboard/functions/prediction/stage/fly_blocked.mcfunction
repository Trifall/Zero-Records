# stage 4 - same again for the obstructed branch, restart from 3 if the markers went.
# on finish both branches have a time and select picks between them.

function zeroboard:prediction/markers
execute if score #sim_markers_valid zc_ctrl matches 0 run kill @e[type=minecraft:armor_stand,tag=zc_dragon_sim]
execute if score #sim_markers_valid zc_ctrl matches 0 run scoreboard players set #prediction_stage zc_ctrl 3
execute if score #sim_markers_valid zc_ctrl matches 1 run function zeroboard:prediction/chunk

scoreboard players set #sim_branch_done zc_ctrl 0
execute if score #sim_markers_valid zc_ctrl matches 1 if score #sim_done zc_ctrl matches 1 run scoreboard players set #sim_branch_done zc_ctrl 1
execute if score #sim_markers_valid zc_ctrl matches 1 if score #sim_steps zc_ctrl matches 600.. run scoreboard players set #sim_branch_done zc_ctrl 1

execute if score #sim_branch_done zc_ctrl matches 1 run scoreboard players operation #sim_flight_blocked zc_ctrl = #sim_flight_ticks zc_ctrl
execute if score #sim_branch_done zc_ctrl matches 1 run scoreboard players operation #sim_slow_blocked zc_ctrl = #sim_slow_ticks zc_ctrl
execute if score #sim_branch_done zc_ctrl matches 1 run function zeroboard:prediction/select
