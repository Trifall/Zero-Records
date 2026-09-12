# v4 -> v5. Custom joined the random group at 3, so Open / Overhang / buried shift up one.

execute store result score #old_spawn zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:4b}}].value
execute if score #old_spawn zc_ctrl matches 3..18 run scoreboard players add #old_spawn zc_ctrl 1
execute store result storage practice:gui pages[1].entries[{tag:{index:4b}}].value byte 1 run scoreboard players get #old_spawn zc_ctrl
scoreboard players operation spawn settings = #old_spawn zc_ctrl
