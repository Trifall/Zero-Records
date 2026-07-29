scoreboard players set #record_id zc_ctrl -1
execute store result score #record_id zc_ctrl run data get storage zeroboard:records records[0].id
scoreboard players operation #prediction_id zc_ctrl = #record_id zc_ctrl
scoreboard players set #prediction_snapshot_ok zc_ctrl 0
scoreboard players set #new_pb zc_ctrl 0
scoreboard players set #finish_ticks zc_ctrl 0
execute if score #record_id zc_ctrl = #active_record zc_ctrl run data modify storage zeroboard:records records[0] merge value {prediction_pending:1b,prediction_ready:0b,prediction_announced:0b,finish_actual:0b,finish_source:0,finish_ticks:0,predicted_flight_ticks:0,arrival_ticks:0,actual_flight_ticks:0,flight_error:0,death_tail_ticks:0,observed_finish_ticks:0,finish_observation_error:0}
data remove storage zeroboard:records work.predicted_finish_string
execute if score #record_id zc_ctrl = #active_record zc_ctrl in minecraft:the_end at @e[type=minecraft:ender_dragon,limit=1] run function zeroboard:prediction/start
execute if score #prediction_snapshot_ok zc_ctrl matches 0 in minecraft:the_end run function zeroboard:prediction/cancel
