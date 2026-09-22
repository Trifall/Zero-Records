# up to #sim_budget more steps, as the zc_dragon_sim_pos marker so the rest can use @s
scoreboard players remove #sim_budget zc_ctrl 1
execute if score #sim_done zc_ctrl matches 0 if score #sim_steps zc_ctrl matches ..599 run function zeroboard:prediction/step
execute if score #sim_budget zc_ctrl matches 1.. if score #sim_done zc_ctrl matches 0 if score #sim_steps zc_ctrl matches ..599 run function zeroboard:prediction/steps
