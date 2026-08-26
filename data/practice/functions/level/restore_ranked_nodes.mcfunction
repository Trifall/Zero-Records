# put back the exact end-stone layers removed during Ranked node init
scoreboard players operation #node_ground zc_ctrl = #ranked_front_y zc_ctrl
execute in minecraft:the_end positioned 28 0 -29 run function practice:level/restore_ranked_node_column

scoreboard players operation #node_ground zc_ctrl = #ranked_back_y zc_ctrl
execute in minecraft:the_end positioned -29 0 28 run function practice:level/restore_ranked_node_column
