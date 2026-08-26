# clear the Always Fly probes once the dragon has cached. whole-column barrier
# clears cover both the fixed Y95 spots and any custom height.
execute in minecraft:the_end run fill 28 73 -29 28 120 -29 minecraft:air replace minecraft:barrier
execute in minecraft:the_end run fill -29 73 28 -29 120 28 minecraft:air replace minecraft:barrier
execute in minecraft:the_end run fill 20 73 0 20 120 0 minecraft:air replace minecraft:barrier
execute in minecraft:the_end run fill -20 73 0 -20 120 0 minecraft:air replace minecraft:barrier
