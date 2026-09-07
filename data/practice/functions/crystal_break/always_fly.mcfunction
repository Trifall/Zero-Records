# runs from the schedule, in the level tick just before the dragon's own tick.
# drop the dragon to Y95 so findClosestNode picks the node under it and not the
# Y126 selector - Y95 wins from anywhere within 20 blocks of the node - then
# Hover -> Holding (setPhase ignores Holding -> Holding) for a path built from
# there. main puts the height back next tick. below Y95 the node already wins
scoreboard players set #af_dip100 zc_ctrl 0
scoreboard players set #af_y100 zc_ctrl 0
execute store result score #af_y100 zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Pos[1] 100
execute if score #af_y100 zc_ctrl matches 9501.. run scoreboard players operation #af_dip100 zc_ctrl = #af_y100 zc_ctrl
execute if score #af_y100 zc_ctrl matches 9501.. run scoreboard players remove #af_dip100 zc_ctrl 9500
execute if score #af_dip100 zc_ctrl matches 1.. in minecraft:the_end run data modify entity @e[type=minecraft:ender_dragon,limit=1] Pos[1] set value 95.0d
execute in minecraft:the_end run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 10b
execute in minecraft:the_end run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 0b
