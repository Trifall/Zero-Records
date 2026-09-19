# restore only the temporary terrain edits - the dragon keeps the node heights
# vanilla cached on its first pathfinding tick
# reset calls this unguarded, so only clone when load_terrain actually stashed
execute if score #nodes_stashed zc_ctrl matches 1 in minecraft:the_end run clone 28 1 -29 28 20 -29 28 53 -29
execute if score #nodes_stashed zc_ctrl matches 1 in minecraft:the_end run clone -29 1 28 -20 20 28 -29 53 28
execute in minecraft:the_end run fill 28 1 -29 28 20 -29 air
execute in minecraft:the_end run fill -29 1 28 -20 20 28 air
scoreboard players set #nodes_stashed zc_ctrl 0
