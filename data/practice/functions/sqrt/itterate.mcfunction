scoreboard players operation out sqrt = temp sqrt
scoreboard players operation temp sqrt = in sqrt
scoreboard players operation temp sqrt /= out sqrt
scoreboard players operation temp sqrt += out sqrt
scoreboard players operation temp sqrt /= 2 c
# only recurse while it is still coming down. newton can settle into a two
# integer oscillation, which never hits temp = out and runs until the chain limit
execute if score temp sqrt < out sqrt run function practice:sqrt/itterate
