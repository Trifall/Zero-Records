execute store result score #dragon_y0 zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Pos[1] 10000
scoreboard players operation #dragon_y1 zc_ctrl = #dragon_y0 zc_ctrl
scoreboard players operation #dragon_y2 zc_ctrl = #dragon_y0 zc_ctrl
scoreboard players operation #dragon_y3 zc_ctrl = #dragon_y0 zc_ctrl
scoreboard players operation #dragon_y4 zc_ctrl = #dragon_y0 zc_ctrl
scoreboard players operation #dragon_y5 zc_ctrl = #dragon_y0 zc_ctrl
scoreboard players operation #dragon_y6 zc_ctrl = #dragon_y0 zc_ctrl
scoreboard players operation #dragon_y7 zc_ctrl = #dragon_y0 zc_ctrl
scoreboard players operation #dragon_y8 zc_ctrl = #dragon_y0 zc_ctrl
scoreboard players operation #dragon_y9 zc_ctrl = #dragon_y0 zc_ctrl
scoreboard players operation #dragon_y10 zc_ctrl = #dragon_y0 zc_ctrl
execute store result score #dragon_yaw_precise zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] 10000
scoreboard players set #dragon_yaw_accel zc_ctrl 0
scoreboard players set #dragon_track_active zc_ctrl 1
