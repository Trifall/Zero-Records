kill @e[type=minecraft:armor_stand,tag=zc_dragon_sim]
scoreboard players set #sim_steps zc_ctrl 0
scoreboard players set #sim_flight_ticks zc_ctrl 1
scoreboard players set #sim_done zc_ctrl 0
scoreboard players set #sim_slow_ticks zc_ctrl 0
execute store result score #sim_x zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Pos[0] 1000000
execute store result score #sim_y zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Pos[1] 1000000
execute store result score #sim_z zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Pos[2] 1000000
execute store result score #sim_vx zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Motion[0] 1000000
execute store result score #sim_vy zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Motion[1] 1000000
execute store result score #sim_vz zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Motion[2] 1000000
scoreboard players add #sim_x zc_ctrl 50
scoreboard players add #sim_y zc_ctrl 50
scoreboard players add #sim_z zc_ctrl 50
scoreboard players add #sim_vx zc_ctrl 50
scoreboard players add #sim_vy zc_ctrl 50
scoreboard players add #sim_vz zc_ctrl 50
scoreboard players operation #sim_x zc_ctrl /= #c100 zc_ctrl
scoreboard players operation #sim_y zc_ctrl /= #c100 zc_ctrl
scoreboard players operation #sim_z zc_ctrl /= #c100 zc_ctrl
scoreboard players operation #sim_vx zc_ctrl /= #c100 zc_ctrl
scoreboard players operation #sim_vy zc_ctrl /= #c100 zc_ctrl
scoreboard players operation #sim_vz zc_ctrl /= #c100 zc_ctrl
execute store result score #sim_yaw_precise zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] 10000
scoreboard players operation #sim_yaw zc_ctrl = #sim_yaw_precise zc_ctrl
scoreboard players add #sim_yaw zc_ctrl 50
scoreboard players operation #sim_yaw zc_ctrl /= #c100 zc_ctrl
scoreboard players operation #sim_yaw_delta zc_ctrl = #sim_yaw_precise zc_ctrl
scoreboard players operation #sim_yaw_delta zc_ctrl -= #dragon_yaw_precise zc_ctrl
execute if score #sim_yaw_delta zc_ctrl matches 1800000.. run scoreboard players remove #sim_yaw_delta zc_ctrl 3600000
execute if score #sim_yaw_delta zc_ctrl matches ..-1800001 run scoreboard players add #sim_yaw_delta zc_ctrl 3600000
scoreboard players operation #sim_yaw_accel zc_ctrl = #dragon_yaw_accel zc_ctrl
execute unless score #sim_yaw_delta zc_ctrl matches 0 run scoreboard players operation #sim_yaw_accel zc_ctrl = #sim_yaw_delta zc_ctrl
execute unless score #sim_yaw_delta zc_ctrl matches 0 run scoreboard players add #sim_yaw_accel zc_ctrl 5
execute unless score #sim_yaw_delta zc_ctrl matches 0 run scoreboard players operation #sim_yaw_accel zc_ctrl /= #c10 zc_ctrl
scoreboard players operation #sim_h0 zc_ctrl = #dragon_y0 zc_ctrl
scoreboard players operation #sim_h1 zc_ctrl = #dragon_y1 zc_ctrl
scoreboard players operation #sim_h2 zc_ctrl = #dragon_y2 zc_ctrl
scoreboard players operation #sim_h3 zc_ctrl = #dragon_y3 zc_ctrl
scoreboard players operation #sim_h4 zc_ctrl = #dragon_y4 zc_ctrl
scoreboard players operation #sim_h5 zc_ctrl = #dragon_y5 zc_ctrl
scoreboard players operation #sim_h6 zc_ctrl = #dragon_y6 zc_ctrl
scoreboard players operation #sim_h7 zc_ctrl = #dragon_y7 zc_ctrl
scoreboard players operation #sim_h8 zc_ctrl = #dragon_y8 zc_ctrl
scoreboard players operation #sim_h9 zc_ctrl = #dragon_y9 zc_ctrl
scoreboard players operation #sim_h10 zc_ctrl = #dragon_y10 zc_ctrl
execute store result score #sim_mob_griefing zc_ctrl run gamerule mobGriefing
scoreboard players operation #sim_start_x zc_ctrl = #sim_x zc_ctrl
scoreboard players operation #sim_start_y zc_ctrl = #sim_y zc_ctrl
scoreboard players operation #sim_start_z zc_ctrl = #sim_z zc_ctrl
scoreboard players operation #sim_start_vx zc_ctrl = #sim_vx zc_ctrl
scoreboard players operation #sim_start_vy zc_ctrl = #sim_vy zc_ctrl
scoreboard players operation #sim_start_vz zc_ctrl = #sim_vz zc_ctrl
scoreboard players operation #sim_start_yaw zc_ctrl = #sim_yaw zc_ctrl
scoreboard players operation #sim_start_yaw_accel zc_ctrl = #sim_yaw_accel zc_ctrl
scoreboard players operation #sim_start_h0 zc_ctrl = #sim_h0 zc_ctrl
scoreboard players operation #sim_start_h1 zc_ctrl = #sim_h1 zc_ctrl
scoreboard players operation #sim_start_h2 zc_ctrl = #sim_h2 zc_ctrl
scoreboard players operation #sim_start_h3 zc_ctrl = #sim_h3 zc_ctrl
scoreboard players operation #sim_start_h4 zc_ctrl = #sim_h4 zc_ctrl
scoreboard players operation #sim_start_h5 zc_ctrl = #sim_h5 zc_ctrl
scoreboard players operation #sim_start_h6 zc_ctrl = #sim_h6 zc_ctrl
scoreboard players operation #sim_start_h7 zc_ctrl = #sim_h7 zc_ctrl
scoreboard players operation #sim_start_h8 zc_ctrl = #sim_h8 zc_ctrl
scoreboard players operation #sim_start_h9 zc_ctrl = #sim_h9 zc_ctrl
scoreboard players operation #sim_start_h10 zc_ctrl = #sim_h10 zc_ctrl
scoreboard players operation #prediction_id zc_ctrl = #record_id zc_ctrl
scoreboard players set #prediction_stage zc_ctrl 0
scoreboard players set #prediction_active zc_ctrl 1
scoreboard players set #prediction_snapshot_ok zc_ctrl 1
