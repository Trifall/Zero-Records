scoreboard players set #pb_candidate zc_ctrl 0
execute store result score #pb_candidate zc_ctrl run data get storage zeroboard:records work.pb_scan[0].finish_ticks
execute if score #pb_candidate zc_ctrl matches 1.. if score #pb_ticks zc_ctrl matches ..0 run scoreboard players operation #pb_ticks zc_ctrl = #pb_candidate zc_ctrl
execute if score #pb_candidate zc_ctrl matches 1.. if score #pb_ticks zc_ctrl matches 1.. if score #pb_candidate zc_ctrl < #pb_ticks zc_ctrl run scoreboard players operation #pb_ticks zc_ctrl = #pb_candidate zc_ctrl
data remove storage zeroboard:records work.pb_scan[0]
execute if data storage zeroboard:records work.pb_scan[0] run function zeroboard:records/personal_best/scan
