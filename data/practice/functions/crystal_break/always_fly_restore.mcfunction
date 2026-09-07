# add the dip back onto wherever the dragon's own tick left it
execute store result score #af_y100 zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Pos[1] 100
scoreboard players operation #af_y100 zc_ctrl += #af_dip100 zc_ctrl
execute in minecraft:the_end store result entity @e[type=minecraft:ender_dragon,limit=1] Pos[1] double 0.01 run scoreboard players get #af_y100 zc_ctrl
