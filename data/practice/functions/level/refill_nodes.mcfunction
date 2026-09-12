# restore only the temporary terrain edits - the dragon keeps the node heights
# vanilla cached on its first pathfinding tick
execute if score fly_chance settings matches 0 run function practice:level/restore_ranked_nodes

# keep the original 2025 Zero pack behaviour for No Fly
execute if score fly_chance settings matches 2 in minecraft:the_end run fill 28 60 -29 28 58 -29 end_stone
execute if score fly_chance settings matches 2 in minecraft:the_end run fill -29 59 28 -20 58 28 end_stone
