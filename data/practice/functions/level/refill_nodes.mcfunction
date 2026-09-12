# restore only the temporary terrain edits - the dragon keeps the node heights
# vanilla cached on its first pathfinding tick
execute in minecraft:the_end run fill 28 60 -29 28 58 -29 end_stone
execute in minecraft:the_end run fill -29 59 28 -20 58 28 end_stone
