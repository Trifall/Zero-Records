scoreboard players set #prediction_valid zc_ctrl 1
execute unless score #prediction_active zc_ctrl matches 1 run scoreboard players set #prediction_valid zc_ctrl 0
execute unless score #prediction_stage zc_ctrl matches 0..4 run scoreboard players set #prediction_valid zc_ctrl 0
execute unless score #prediction_id zc_ctrl = #active_record zc_ctrl run scoreboard players set #prediction_valid zc_ctrl 0
execute if score #finish_locked zc_ctrl matches 1 run scoreboard players set #prediction_valid zc_ctrl 0
scoreboard players set #prediction_head_id zc_ctrl -1
scoreboard players set #prediction_pending zc_ctrl 0
scoreboard players set #prediction_source zc_ctrl -1
scoreboard players set #prediction_arrival zc_ctrl 0
scoreboard players set #prediction_actual zc_ctrl 0
execute store result score #prediction_head_id zc_ctrl run data get storage zeroboard:records records[0].id
execute store result score #prediction_pending zc_ctrl run data get storage zeroboard:records records[0].prediction_pending
execute store result score #prediction_source zc_ctrl run data get storage zeroboard:records records[0].finish_source
execute store result score #prediction_arrival zc_ctrl run data get storage zeroboard:records records[0].arrival_ticks
execute store result score #prediction_actual zc_ctrl run data get storage zeroboard:records records[0].finish_actual
execute unless score #prediction_head_id zc_ctrl = #prediction_id zc_ctrl run scoreboard players set #prediction_valid zc_ctrl 0
execute unless score #prediction_pending zc_ctrl matches 1 run scoreboard players set #prediction_valid zc_ctrl 0
execute unless score #prediction_source zc_ctrl matches 0 run scoreboard players set #prediction_valid zc_ctrl 0
execute unless score #prediction_arrival zc_ctrl matches 0 run scoreboard players set #prediction_valid zc_ctrl 0
execute unless score #prediction_actual zc_ctrl matches 0 run scoreboard players set #prediction_valid zc_ctrl 0
