execute if score #sim_flight_clear zc_ctrl > #sim_flight_blocked zc_ctrl run scoreboard players operation #sim_flight_ticks zc_ctrl = #sim_flight_clear zc_ctrl
execute if score #sim_flight_clear zc_ctrl > #sim_flight_blocked zc_ctrl run scoreboard players operation #sim_slow_ticks zc_ctrl = #sim_slow_clear zc_ctrl
execute store result storage zeroboard:debug prediction.fly_ticks int 1 run scoreboard players get #sim_flight_ticks zc_ctrl
execute store result storage zeroboard:debug prediction.slow_ticks int 1 run scoreboard players get #sim_slow_ticks zc_ctrl
execute store result storage zeroboard:debug prediction.fly_ticks_clear int 1 run scoreboard players get #sim_flight_clear zc_ctrl
execute store result storage zeroboard:debug prediction.fly_ticks_blocked int 1 run scoreboard players get #sim_flight_blocked zc_ctrl
function zeroboard:prediction/complete
