# earlier Zero-map reduction: keep 3 of every 13 new strafe entries
scoreboard players set mod rng 13
function practice:random/generate
execute if score r rng matches 3..12 in minecraft:the_end run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 0b
execute if score r rng matches 3..12 run scoreboard players set phase stats 0
