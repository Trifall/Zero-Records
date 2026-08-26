# clear the 1/8 node probe once the dragon has cached its heights. whole-column
# barrier clear so any custom height is covered; only barriers go, nothing built.
execute in minecraft:the_end run fill 20 73 0 20 120 0 minecraft:air replace minecraft:barrier
execute in minecraft:the_end run fill -20 73 0 -20 120 0 minecraft:air replace minecraft:barrier
scoreboard players set #one_eighth_saved zc_ctrl 0
