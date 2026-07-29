execute if block ~ ~ ~ #minecraft:dragon_immune run scoreboard players set #sim_slow zc_ctrl 1
execute if score #sim_mob_griefing zc_ctrl matches 0 unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless block ~ ~ ~ minecraft:void_air unless block ~ ~ ~ minecraft:fire unless block ~ ~ ~ minecraft:soul_fire run scoreboard players set #sim_slow zc_ctrl 1
