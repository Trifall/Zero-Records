scoreboard players operation #dragon_y10 zc_ctrl = #dragon_y9 zc_ctrl
scoreboard players operation #dragon_y9 zc_ctrl = #dragon_y8 zc_ctrl
scoreboard players operation #dragon_y8 zc_ctrl = #dragon_y7 zc_ctrl
scoreboard players operation #dragon_y7 zc_ctrl = #dragon_y6 zc_ctrl
scoreboard players operation #dragon_y6 zc_ctrl = #dragon_y5 zc_ctrl
scoreboard players operation #dragon_y5 zc_ctrl = #dragon_y4 zc_ctrl
scoreboard players operation #dragon_y4 zc_ctrl = #dragon_y3 zc_ctrl
scoreboard players operation #dragon_y3 zc_ctrl = #dragon_y2 zc_ctrl
scoreboard players operation #dragon_y2 zc_ctrl = #dragon_y1 zc_ctrl
scoreboard players operation #dragon_y1 zc_ctrl = #dragon_y0 zc_ctrl
execute store result score #dragon_y0 zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Pos[1] 10000
execute store result score #dragon_yaw_sample zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] 10000
scoreboard players operation #dragon_yaw_delta zc_ctrl = #dragon_yaw_sample zc_ctrl
scoreboard players operation #dragon_yaw_delta zc_ctrl -= #dragon_yaw_precise zc_ctrl
execute if score #dragon_yaw_delta zc_ctrl matches 1800000.. run scoreboard players remove #dragon_yaw_delta zc_ctrl 3600000
execute if score #dragon_yaw_delta zc_ctrl matches ..-1800001 run scoreboard players add #dragon_yaw_delta zc_ctrl 3600000
execute unless score #dragon_yaw_delta zc_ctrl matches 0 run scoreboard players operation #dragon_yaw_accel zc_ctrl = #dragon_yaw_delta zc_ctrl
execute unless score #dragon_yaw_delta zc_ctrl matches 0 run scoreboard players add #dragon_yaw_accel zc_ctrl 5
execute unless score #dragon_yaw_delta zc_ctrl matches 0 run scoreboard players operation #dragon_yaw_accel zc_ctrl /= #c10 zc_ctrl
scoreboard players operation #dragon_yaw_precise zc_ctrl = #dragon_yaw_sample zc_ctrl
