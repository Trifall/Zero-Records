# restore only the temporary terrain edits - the dragon keeps the node heights
# vanilla cached on its first pathfinding tick
execute if score fly_chance settings matches 0 run function practice:level/restore_ranked_nodes

# keep the original 2025 Zero pack behaviour for No Fly
execute if score fly_chance settings matches 2 in minecraft:the_end run fill 28 60 -29 28 58 -29 end_stone
execute if score fly_chance settings matches 2 in minecraft:the_end run fill -29 59 28 -20 58 28 end_stone

# remove the invisible heightmap probes once vanilla has cached Y=95
execute if score fly_chance settings matches 3..4 run function practice:level/restore_always_fly_nodes
execute if score #one_eighth_saved zc_ctrl matches 1 run function practice:level/restore_one_eighth_always_fly_nodes
