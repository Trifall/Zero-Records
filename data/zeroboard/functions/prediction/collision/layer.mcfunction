scoreboard players set #scan_z zc_ctrl 0
execute if score #scan_kind zc_ctrl matches 1 at @s run tp @s ~ ~1 ~-2
execute if score #scan_kind zc_ctrl matches 2 at @s run tp @s ~ ~1 ~-4
execute if score #scan_kind zc_ctrl matches 3 at @s run tp @s ~ ~1 ~-6
scoreboard players add #scan_y zc_ctrl 1
execute if score #scan_y zc_ctrl < #scan_h zc_ctrl run function zeroboard:prediction/collision/scan
