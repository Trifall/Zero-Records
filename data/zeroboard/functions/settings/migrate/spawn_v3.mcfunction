# v2 -> v3. one more buried depth, so everything from 3 up shifts again.

execute store result score #old_spawn zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:4b}}].value
execute if score #old_spawn zc_ctrl matches 3..16 run scoreboard players add #old_spawn zc_ctrl 1
execute store result storage practice:gui pages[1].entries[{tag:{index:4b}}].value byte 1 run scoreboard players get #old_spawn zc_ctrl
scoreboard players operation spawn settings = #old_spawn zc_ctrl
