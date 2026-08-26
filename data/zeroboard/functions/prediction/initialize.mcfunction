kill @e[type=minecraft:armor_stand,tag=zc_dragon_sim]
scoreboard players set #sim_steps zc_ctrl 0
scoreboard players set #sim_flight_ticks zc_ctrl 1
scoreboard players set #sim_done zc_ctrl 0
scoreboard players set #sim_slow_ticks zc_ctrl 0
scoreboard players operation #sim_x zc_ctrl = #sim_start_x zc_ctrl
scoreboard players operation #sim_y zc_ctrl = #sim_start_y zc_ctrl
scoreboard players operation #sim_z zc_ctrl = #sim_start_z zc_ctrl
scoreboard players operation #sim_vx zc_ctrl = #sim_start_vx zc_ctrl
scoreboard players operation #sim_vy zc_ctrl = #sim_start_vy zc_ctrl
scoreboard players operation #sim_vz zc_ctrl = #sim_start_vz zc_ctrl
scoreboard players operation #sim_yaw zc_ctrl = #sim_start_yaw zc_ctrl
scoreboard players operation #sim_yaw_accel zc_ctrl = #sim_start_yaw_accel zc_ctrl
scoreboard players operation #sim_h0 zc_ctrl = #sim_start_h0 zc_ctrl
scoreboard players operation #sim_h1 zc_ctrl = #sim_start_h1 zc_ctrl
scoreboard players operation #sim_h2 zc_ctrl = #sim_start_h2 zc_ctrl
scoreboard players operation #sim_h3 zc_ctrl = #sim_start_h3 zc_ctrl
scoreboard players operation #sim_h4 zc_ctrl = #sim_start_h4 zc_ctrl
scoreboard players operation #sim_h5 zc_ctrl = #sim_start_h5 zc_ctrl
scoreboard players operation #sim_h6 zc_ctrl = #sim_start_h6 zc_ctrl
scoreboard players operation #sim_h7 zc_ctrl = #sim_start_h7 zc_ctrl
scoreboard players operation #sim_h8 zc_ctrl = #sim_start_h8 zc_ctrl
scoreboard players operation #sim_h9 zc_ctrl = #sim_start_h9 zc_ctrl
scoreboard players operation #sim_h10 zc_ctrl = #sim_start_h10 zc_ctrl
summon minecraft:armor_stand 0 250 0 {Tags:["zc_dragon_sim","zc_dragon_sim_pos"],Invisible:1b,Marker:1b,NoGravity:1b}
summon minecraft:armor_stand 0 250 0 {Tags:["zc_dragon_sim","zc_dragon_sim_vector"],Invisible:1b,Marker:1b,NoGravity:1b}
summon minecraft:armor_stand 0 250 0 {Tags:["zc_dragon_sim","zc_dragon_sim_head"],Invisible:1b,Marker:1b,NoGravity:1b}
summon minecraft:armor_stand 0 250 0 {Tags:["zc_dragon_sim","zc_dragon_sim_neck"],Invisible:1b,Marker:1b,NoGravity:1b}
summon minecraft:armor_stand 0 250 0 {Tags:["zc_dragon_sim","zc_dragon_sim_body"],Invisible:1b,Marker:1b,NoGravity:1b}
summon minecraft:armor_stand 0 250 0 {Tags:["zc_dragon_sim","zc_dragon_sim_probe"],Invisible:1b,Marker:1b,NoGravity:1b}
summon minecraft:armor_stand 0.5 65 0.5 {Tags:["zc_dragon_sim","zc_dragon_sim_target"],Invisible:1b,Marker:1b,NoGravity:1b}
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_pos,limit=1] run function zeroboard:prediction/collision/update
