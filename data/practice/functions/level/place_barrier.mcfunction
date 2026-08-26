# place one barrier at (#pb_x, #pb_y, #pb_z). no macros in pack_format 5, so a
# marker carries the score-derived coords and setblock runs at it. every entity
# op is scoped to the End, or an empty selector would drop the block at 0 0 0.
execute in minecraft:the_end run kill @e[tag=pb]
execute in minecraft:the_end run summon minecraft:armor_stand 0 128 0 {Tags:["pb"],Marker:1b,Invisible:1b,NoGravity:1b}
execute in minecraft:the_end store result entity @e[tag=pb,limit=1] Pos[0] double 1 run scoreboard players get #pb_x zc_ctrl
execute in minecraft:the_end store result entity @e[tag=pb,limit=1] Pos[1] double 1 run scoreboard players get #pb_y zc_ctrl
execute in minecraft:the_end store result entity @e[tag=pb,limit=1] Pos[2] double 1 run scoreboard players get #pb_z zc_ctrl
execute in minecraft:the_end at @e[tag=pb,limit=1] run setblock ~ ~ ~ minecraft:barrier
execute in minecraft:the_end run kill @e[tag=pb]
