scoreboard players set #sim_budget zc_ctrl 8
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_pos,limit=1] run function zeroboard:prediction/steps
execute if score #sim_done zc_ctrl matches 0 if score #sim_steps zc_ctrl matches 600.. run scoreboard players set #sim_flight_ticks zc_ctrl 601
