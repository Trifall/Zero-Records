scoreboard players add #scan_x zc_ctrl 1
execute if score #scan_x zc_ctrl < #scan_w zc_ctrl run function zeroboard:prediction/collision/advance_x
execute if score #scan_x zc_ctrl = #scan_w zc_ctrl run function zeroboard:prediction/collision/row
