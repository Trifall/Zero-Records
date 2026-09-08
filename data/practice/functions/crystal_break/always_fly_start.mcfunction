# select the lower node for one entity tick; main restores the height next tick
# Hover -> Holding rebuilds the path; Holding -> Holding does nothing
scoreboard players set #af_dip100 zc_ctrl 0
scoreboard players set #af_y100 zc_ctrl 0
execute store result score #af_y100 zc_ctrl in minecraft:the_end run data get entity @s Pos[1] 100
execute if score #af_y100 zc_ctrl matches 9501.. run scoreboard players operation #af_dip100 zc_ctrl = #af_y100 zc_ctrl
execute if score #af_y100 zc_ctrl matches 9501.. run scoreboard players remove #af_dip100 zc_ctrl 9500
execute if score #af_dip100 zc_ctrl matches 1.. in minecraft:the_end run data modify entity @s Pos[1] set value 95.0d
execute in minecraft:the_end run data modify entity @s DragonPhase set value 10b
execute in minecraft:the_end run data modify entity @s DragonPhase set value 0b
execute if score #af_dip100 zc_ctrl matches 1.. run tag @s add zc_crystal_fly_restore
