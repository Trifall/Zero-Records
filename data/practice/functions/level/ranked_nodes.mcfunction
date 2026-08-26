# Ranked uses vanilla's heightmap node init - drop the terrain five blocks at the
# two selectable diagonal nodes, then put it back after the dragon caches
execute in minecraft:the_end positioned 28 0 -29 run function practice:level/ranked_node_column
scoreboard players operation #ranked_front_y zc_ctrl = #node_ground zc_ctrl
execute in minecraft:the_end positioned -29 0 28 run function practice:level/ranked_node_column
scoreboard players operation #ranked_back_y zc_ctrl = #node_ground zc_ctrl
