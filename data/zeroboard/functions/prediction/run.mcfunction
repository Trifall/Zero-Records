# flush a whole branch inside one tick, batches until it lands or hits 600 steps.
# only force_finish needs this, when a reset means there is no next tick to carry on.
# this is why load raises maxCommandChainLength.

execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 run function zeroboard:prediction/batch
execute if score #sim_done zc_ctrl matches 0 if score #sim_steps zc_ctrl matches 600.. run scoreboard players set #sim_flight_ticks zc_ctrl 601
