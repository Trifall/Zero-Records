# place the head / neck / body markers for this step and probe each part's box for
# blocks the dragon would have to plough through. runs as the zc_dragon_sim_pos marker.
# a box that is all air (matches the empty template at 0 250 0) is skipped.
scoreboard players set #sim_slow zc_ctrl 0
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #sim_x zc_ctrl
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #sim_y zc_ctrl
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #sim_z zc_ctrl
execute at @s run tp @s ~ ~ ~
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #sim_yaw zc_ctrl
data modify entity @s Rotation[1] set value 0f
execute at @s rotated as @s run tp @e[type=minecraft:armor_stand,tag=zc_dragon_sim_body,limit=1] ^ ^ ^-0.5
scoreboard players operation #sim_pitch zc_ctrl = #sim_h5 zc_ctrl
scoreboard players operation #sim_pitch zc_ctrl -= #sim_h10 zc_ctrl
scoreboard players operation #sim_pitch zc_ctrl /= #c10 zc_ctrl
scoreboard players operation #sim_head_yaw zc_ctrl = #sim_yaw zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_yaw_accel zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #c573 zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_head_yaw zc_ctrl -= #sim_tmp zc_ctrl
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #sim_head_yaw zc_ctrl
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #sim_pitch zc_ctrl
execute at @s rotated as @s run tp @e[type=minecraft:armor_stand,tag=zc_dragon_sim_head,limit=1] ^ ^ ^-6.5
execute at @s rotated as @s run tp @e[type=minecraft:armor_stand,tag=zc_dragon_sim_neck,limit=1] ^ ^ ^-5.5
scoreboard players operation #sim_part_y zc_ctrl = #sim_h5 zc_ctrl
scoreboard players operation #sim_part_y zc_ctrl -= #sim_h0 zc_ctrl
execute store result score #sim_tmp zc_ctrl run data get entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_head,limit=1] Pos[1] 10000
scoreboard players operation #sim_tmp zc_ctrl += #sim_part_y zc_ctrl
execute store result entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_head,limit=1] Pos[1] double 0.0001 run scoreboard players get #sim_tmp zc_ctrl
execute store result score #sim_tmp zc_ctrl run data get entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_neck,limit=1] Pos[1] 10000
scoreboard players operation #sim_tmp zc_ctrl += #sim_part_y zc_ctrl
execute store result entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_neck,limit=1] Pos[1] double 0.0001 run scoreboard players get #sim_tmp zc_ctrl
scoreboard players set #scan_kind zc_ctrl 1
scoreboard players set #scan_w zc_ctrl 2
scoreboard players set #scan_h zc_ctrl 2
scoreboard players set #scan_d zc_ctrl 2
scoreboard players set #scan_x zc_ctrl 0
scoreboard players set #scan_y zc_ctrl 0
scoreboard players set #scan_z zc_ctrl 0
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_probe,limit=1] at @e[type=minecraft:armor_stand,tag=zc_dragon_sim_head,limit=1] run tp @s ~-0.5 ~ ~-0.5
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_probe,limit=1] at @e[type=minecraft:armor_stand,tag=zc_dragon_sim_head,limit=1] unless blocks ~-0.5 ~ ~-0.5 ~0.5 ~1 ~0.5 0 250 0 all run function zeroboard:prediction/collision/scan
scoreboard players set #scan_kind zc_ctrl 2
scoreboard players set #scan_w zc_ctrl 4
scoreboard players set #scan_h zc_ctrl 4
scoreboard players set #scan_d zc_ctrl 4
scoreboard players set #scan_x zc_ctrl 0
scoreboard players set #scan_y zc_ctrl 0
scoreboard players set #scan_z zc_ctrl 0
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_probe,limit=1] at @e[type=minecraft:armor_stand,tag=zc_dragon_sim_neck,limit=1] run tp @s ~-1.5 ~ ~-1.5
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_probe,limit=1] at @e[type=minecraft:armor_stand,tag=zc_dragon_sim_neck,limit=1] unless blocks ~-1.5 ~ ~-1.5 ~1.5 ~3 ~1.5 0 250 0 all run function zeroboard:prediction/collision/scan
scoreboard players set #scan_kind zc_ctrl 3
scoreboard players set #scan_w zc_ctrl 6
scoreboard players set #scan_h zc_ctrl 4
scoreboard players set #scan_d zc_ctrl 6
scoreboard players set #scan_x zc_ctrl 0
scoreboard players set #scan_y zc_ctrl 0
scoreboard players set #scan_z zc_ctrl 0
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_probe,limit=1] at @e[type=minecraft:armor_stand,tag=zc_dragon_sim_body,limit=1] run tp @s ~-2.5 ~ ~-2.5
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_probe,limit=1] at @e[type=minecraft:armor_stand,tag=zc_dragon_sim_body,limit=1] unless blocks ~-2.5 ~ ~-2.5 ~2.5 ~3 ~2.5 0 250 0 all run function zeroboard:prediction/collision/scan
