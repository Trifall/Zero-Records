execute at @s run function zeroboard:prediction/collision/check_block
execute unless score #sim_slow zc_ctrl matches 1 run function zeroboard:prediction/collision/advance
