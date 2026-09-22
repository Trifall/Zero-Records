# place the head / neck / body markers for this step and probe each part's box for
# blocks the dragon would have to plough through. runs as the zc_dragon_sim_pos marker,
# already at the sim position with Rotation [yaw, 0]; each part runs as its own marker.
scoreboard players set #sim_slow zc_ctrl 0
execute at @s run tp @s ~ ~ ~
execute at @s rotated as @s as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_body,limit=1] run function zeroboard:prediction/collision/body
scoreboard players operation #sim_pitch zc_ctrl = #sim_h5 zc_ctrl
scoreboard players operation #sim_pitch zc_ctrl -= #sim_h10 zc_ctrl
scoreboard players operation #sim_pitch zc_ctrl /= #c10 zc_ctrl
scoreboard players operation #sim_head_yaw zc_ctrl = #sim_yaw zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_yaw_accel zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #c573 zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_head_yaw zc_ctrl -= #sim_tmp zc_ctrl
execute store result storage zeroboard:sim hr[0] float 0.01 run scoreboard players get #sim_head_yaw zc_ctrl
execute store result storage zeroboard:sim hr[1] float 0.01 run scoreboard players get #sim_pitch zc_ctrl
data modify entity @s Rotation set from storage zeroboard:sim hr
scoreboard players operation #sim_part_y zc_ctrl = #sim_h5 zc_ctrl
scoreboard players operation #sim_part_y zc_ctrl -= #sim_h0 zc_ctrl
execute at @s rotated as @s as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_head,limit=1] run function zeroboard:prediction/collision/head
execute at @s rotated as @s as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_neck,limit=1] run function zeroboard:prediction/collision/neck
