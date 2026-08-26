# Always Fly replaces vanilla's targeted strafe too - a very early 1/8 hit can
# strafe to a node already within ten blocks, a fireball turn with no flight
execute if score #force_crystal_fly zc_ctrl matches 1 if score crystal_break settings matches 1 in minecraft:the_end run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 0b
execute if score #force_crystal_fly zc_ctrl matches 1 if score crystal_break settings matches 1 run scoreboard players set phase stats 0
scoreboard players set #force_crystal_fly zc_ctrl 0
