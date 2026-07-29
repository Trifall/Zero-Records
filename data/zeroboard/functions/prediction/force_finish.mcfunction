function zeroboard:prediction/validate
execute if score #prediction_valid zc_ctrl matches 0 run function zeroboard:prediction/cancel
execute if score #prediction_valid zc_ctrl matches 1 run fill 0 250 0 5 253 5 minecraft:air replace
execute if score #prediction_valid zc_ctrl matches 1 run function zeroboard:prediction/initialize
execute if score #prediction_valid zc_ctrl matches 1 run scoreboard players set #sim_slow zc_ctrl 0
execute if score #prediction_valid zc_ctrl matches 1 run function zeroboard:prediction/run
execute if score #prediction_valid zc_ctrl matches 1 run scoreboard players operation #sim_flight_clear zc_ctrl = #sim_flight_ticks zc_ctrl
execute if score #prediction_valid zc_ctrl matches 1 run scoreboard players operation #sim_slow_clear zc_ctrl = #sim_slow_ticks zc_ctrl
execute if score #prediction_valid zc_ctrl matches 1 run function zeroboard:prediction/initialize
execute if score #prediction_valid zc_ctrl matches 1 run scoreboard players set #sim_slow zc_ctrl 1
execute if score #prediction_valid zc_ctrl matches 1 run function zeroboard:prediction/run
execute if score #prediction_valid zc_ctrl matches 1 run scoreboard players operation #sim_flight_blocked zc_ctrl = #sim_flight_ticks zc_ctrl
execute if score #prediction_valid zc_ctrl matches 1 run scoreboard players operation #sim_slow_blocked zc_ctrl = #sim_slow_ticks zc_ctrl
execute if score #prediction_valid zc_ctrl matches 1 run function zeroboard:prediction/select
