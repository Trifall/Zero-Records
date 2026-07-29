scoreboard players set #prediction_active zc_ctrl 0
scoreboard players set #prediction_stage zc_ctrl 0
scoreboard players set #prediction_id zc_ctrl -1
scoreboard players set #prediction_snapshot_ok zc_ctrl 0
execute in minecraft:the_end run kill @e[type=minecraft:armor_stand,tag=zc_dragon_sim]
