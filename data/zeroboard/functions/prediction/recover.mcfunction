function zeroboard:prediction/validate
execute if score #prediction_valid zc_ctrl matches 0 run function zeroboard:prediction/cancel
execute if score #prediction_valid zc_ctrl matches 1 if score #prediction_stage zc_ctrl matches 2 run scoreboard players set #prediction_stage zc_ctrl 1
execute if score #prediction_valid zc_ctrl matches 1 if score #prediction_stage zc_ctrl matches 4 run scoreboard players set #prediction_stage zc_ctrl 3
execute if score #prediction_valid zc_ctrl matches 1 in minecraft:the_end run kill @e[type=minecraft:armor_stand,tag=zc_dragon_sim]
