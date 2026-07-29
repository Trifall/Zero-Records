# v1 -> v2. buried depths inserted, so 3..7 shift up one and old 8 goes to the end.

execute store result score #old_spawn zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:4b}}].value
execute if score #old_spawn zc_ctrl matches 3..7 run scoreboard players add #old_spawn zc_ctrl 1
execute if score #old_spawn zc_ctrl matches 8 run scoreboard players set #old_spawn zc_ctrl 16
execute store result storage practice:gui pages[1].entries[{tag:{index:4b}}].value byte 1 run scoreboard players get #old_spawn zc_ctrl
scoreboard players operation spawn settings = #old_spawn zc_ctrl
