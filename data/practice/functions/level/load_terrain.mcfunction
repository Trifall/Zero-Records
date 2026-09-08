execute as @e[tag=tower,name=Tower0] at @s run data modify block ~ 68 ~ name set value "practice:terrain/0"
execute as @e[tag=tower,name=Tower1] at @s run data modify block ~ 68 ~ name set value "practice:terrain/1"
execute as @e[tag=tower,name=Tower2] at @s run data modify block ~ 68 ~ name set value "practice:terrain/2"
execute as @e[tag=tower,name=Tower3] at @s run data modify block ~ 68 ~ name set value "practice:terrain/3"
execute as @e[tag=tower,name=Tower4] at @s run data modify block ~ 68 ~ name set value "practice:terrain/4"
execute as @e[tag=tower,name=Tower5] at @s run data modify block ~ 68 ~ name set value "practice:terrain/5"
execute as @e[tag=tower,name=Tower6] at @s run data modify block ~ 68 ~ name set value "practice:terrain/6"
execute as @e[tag=tower,name=Tower7] at @s run data modify block ~ 68 ~ name set value "practice:terrain/7"
execute as @e[tag=tower,name=Tower8] at @s run data modify block ~ 68 ~ name set value "practice:terrain/8"
execute as @e[tag=tower,name=Tower9] at @s run data modify block ~ 68 ~ name set value "practice:terrain/9"

execute as @e[tag=tower] at @s run setblock ~ 67 ~ minecraft:redstone_block
execute as @e[tag=tower] at @s run setblock ~ 67 ~ minecraft:air
execute as @e[tag=tower] at @s run setblock ~ 68 ~ minecraft:air

# vanilla caches its 24 path-node heights on the dragon's first pathfind. do the
# temporary terrain edits now, before the dragon spawns next tick, and put the
# visible terrain back once the heights are cached.
execute if score fly_chance settings matches 0 run function practice:level/ranked_nodes
execute if score fly_chance settings matches 2 in minecraft:the_end run fill 28 60 -29 28 58 -29 air
execute if score fly_chance settings matches 2 in minecraft:the_end run fill -29 59 28 -20 58 28 air
execute if score fly_chance settings matches 3..4 run function practice:level/always_fly_nodes

# the restore has to outlive the dragon's first pathfinding tick, which a fixed
# delay from here cannot promise (2t landed in the same function phase as the
# spawn), so spawn_dragon schedules it off its own tick. this is just the
# fallback for a run with no dragon at all.
execute if score disable_dragon settings matches 1 run schedule function practice:level/refill_nodes 4t replace
