# v3 -> v4. the two random options moved from the end of the list to the front:
#   0 Random  1 Actually Random  2 Random Buried  3 Open  4 Overhang  5.. buried
# old 17 / 18 were the random pair, old 0 / 1 were Open and Overhang.

execute store result score #old_spawn zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:4b}}].value
scoreboard players operation #new_spawn zc_ctrl = #old_spawn zc_ctrl
execute if score #old_spawn zc_ctrl matches 0 run scoreboard players set #new_spawn zc_ctrl 3
execute if score #old_spawn zc_ctrl matches 1 run scoreboard players set #new_spawn zc_ctrl 4
execute if score #old_spawn zc_ctrl matches 3..16 run scoreboard players add #new_spawn zc_ctrl 2
execute if score #old_spawn zc_ctrl matches 17 run scoreboard players set #new_spawn zc_ctrl 0
execute if score #old_spawn zc_ctrl matches 18 run scoreboard players set #new_spawn zc_ctrl 1
execute store result storage practice:gui pages[1].entries[{tag:{index:4b}}].value byte 1 run scoreboard players get #new_spawn zc_ctrl
scoreboard players operation spawn settings = #new_spawn zc_ctrl
