scoreboard players set #scan_x zc_ctrl 0
execute if score #scan_kind zc_ctrl matches 1 as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_probe,limit=1] at @s run tp @s ~-1 ~ ~1
execute if score #scan_kind zc_ctrl matches 2 as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_probe,limit=1] at @s run tp @s ~-3 ~ ~1
execute if score #scan_kind zc_ctrl matches 3 as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_probe,limit=1] at @s run tp @s ~-5 ~ ~1
scoreboard players add #scan_z zc_ctrl 1
execute unless score #sim_slow zc_ctrl matches 1 run function zeroboard:prediction/collision/row_dispatch
