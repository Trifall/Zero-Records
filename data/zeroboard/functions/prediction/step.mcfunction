# one simulated tick. positions live in scores at 1/100 block, no floats here.
# ends the branch on arrival, or once it has drifted too far to be following the
# real path any more.

scoreboard players operation #sim_x100 zc_ctrl = #sim_x zc_ctrl
scoreboard players operation #sim_x100 zc_ctrl /= #c100 zc_ctrl
scoreboard players operation #sim_y100 zc_ctrl = #sim_y zc_ctrl
scoreboard players operation #sim_y100 zc_ctrl /= #c100 zc_ctrl
scoreboard players operation #sim_z100 zc_ctrl = #sim_z zc_ctrl
scoreboard players operation #sim_z100 zc_ctrl /= #c100 zc_ctrl
scoreboard players set #sim_dx zc_ctrl 50
scoreboard players operation #sim_dx zc_ctrl -= #sim_x100 zc_ctrl
scoreboard players set #sim_dy zc_ctrl 6500
scoreboard players operation #sim_dy zc_ctrl -= #sim_y100 zc_ctrl
scoreboard players set #sim_dz zc_ctrl 50
scoreboard players operation #sim_dz zc_ctrl -= #sim_z100 zc_ctrl
scoreboard players operation #sim_dx2 zc_ctrl = #sim_dx zc_ctrl
scoreboard players operation #sim_dx2 zc_ctrl *= #sim_dx zc_ctrl
scoreboard players operation #sim_dy2 zc_ctrl = #sim_dy zc_ctrl
scoreboard players operation #sim_dy2 zc_ctrl *= #sim_dy zc_ctrl
scoreboard players operation #sim_dz2 zc_ctrl = #sim_dz zc_ctrl
scoreboard players operation #sim_dz2 zc_ctrl *= #sim_dz zc_ctrl
scoreboard players operation #sim_dist2 zc_ctrl = #sim_dx2 zc_ctrl
scoreboard players operation #sim_dist2 zc_ctrl += #sim_dy2 zc_ctrl
scoreboard players operation #sim_dist2 zc_ctrl += #sim_dz2 zc_ctrl
# arrived - within 10 blocks of the node
execute at @e[type=minecraft:armor_stand,tag=zc_dragon_sim_pos,limit=1] if entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_target,limit=1,distance=..10] run function zeroboard:prediction/finish
# diverged - 150+ blocks out, not tracking the real path any more
execute at @e[type=minecraft:armor_stand,tag=zc_dragon_sim_pos,limit=1] if entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_target,limit=1,distance=150..] run function zeroboard:prediction/finish
execute if score #sim_done zc_ctrl matches 0 if score #sim_steps zc_ctrl matches ..599 run function zeroboard:prediction/move
execute if score #sim_steps zc_ctrl matches 600.. run scoreboard players set #sim_flight_ticks zc_ctrl 601
