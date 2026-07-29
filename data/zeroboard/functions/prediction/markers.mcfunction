scoreboard players set #sim_markers_valid zc_ctrl 1
scoreboard players set #sim_marker_count zc_ctrl 0
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim] run scoreboard players add #sim_marker_count zc_ctrl 1
execute unless score #sim_marker_count zc_ctrl matches 7 run scoreboard players set #sim_markers_valid zc_ctrl 0
execute unless entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_pos,limit=1] run scoreboard players set #sim_markers_valid zc_ctrl 0
execute unless entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] run scoreboard players set #sim_markers_valid zc_ctrl 0
execute unless entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_head,limit=1] run scoreboard players set #sim_markers_valid zc_ctrl 0
execute unless entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_neck,limit=1] run scoreboard players set #sim_markers_valid zc_ctrl 0
execute unless entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_body,limit=1] run scoreboard players set #sim_markers_valid zc_ctrl 0
execute unless entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_probe,limit=1] run scoreboard players set #sim_markers_valid zc_ctrl 0
execute unless entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_target,limit=1] run scoreboard players set #sim_markers_valid zc_ctrl 0
