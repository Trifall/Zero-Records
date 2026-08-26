scoreboard players set #announce_valid zc_ctrl 0
scoreboard players set #record_id zc_ctrl -1
scoreboard players set #prediction_announced zc_ctrl 0
scoreboard players set #prediction_pb_before zc_ctrl 0
scoreboard players set #finish_ticks zc_ctrl 0
scoreboard players set #finish_source zc_ctrl 0
execute store result score #record_id zc_ctrl run data get storage zeroboard:records records[0].id
execute store result score #prediction_announced zc_ctrl run data get storage zeroboard:records records[0].prediction_announced
execute store result score #prediction_pb_before zc_ctrl run data get storage zeroboard:records records[0].pb_before_ticks
execute store result score #finish_ticks zc_ctrl run data get storage zeroboard:records records[0].finish_ticks
execute store result score #finish_source zc_ctrl run data get storage zeroboard:records records[0].finish_source
execute if score #record_id zc_ctrl = #active_record zc_ctrl if score #prediction_announced zc_ctrl matches 0 if score #finish_ticks zc_ctrl matches 1.. run scoreboard players set #announce_valid zc_ctrl 1
scoreboard players set #new_pb zc_ctrl 0
execute if score #announce_valid zc_ctrl matches 1 if score #prediction_pb_before zc_ctrl matches ..0 run scoreboard players set #new_pb zc_ctrl 1
execute if score #announce_valid zc_ctrl matches 1 if score #prediction_pb_before zc_ctrl matches 1.. if score #finish_ticks zc_ctrl < #prediction_pb_before zc_ctrl run scoreboard players set #new_pb zc_ctrl 1
execute if score #announce_valid zc_ctrl matches 1 if score #new_pb zc_ctrl matches 1 run scoreboard players operation #pb_ticks zc_ctrl = #finish_ticks zc_ctrl
execute if score #announce_valid zc_ctrl matches 1 run function zeroboard:prediction/format
execute if score #announce_valid zc_ctrl matches 1 if score #finish_source zc_ctrl matches 1 run function zeroboard:prediction/message
execute if score #announce_valid zc_ctrl matches 1 run data modify storage zeroboard:records records[0].prediction_announced set value 1b
execute if score #announce_valid zc_ctrl matches 1 run function zeroboard:records/personal_best/format
execute if score #announce_valid zc_ctrl matches 1 run scoreboard players set #dirty zc_ctrl 1
