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
summon minecraft:armor_stand 0.5 65 0.5 {Tags:["zc_dragon_sim","zc_dragon_sim_target"],Invisible:1b,Marker:1b,NoGravity:1b}
# scratch nbt for move / collision: p, q positions, r and hr rotations, v the last vector read
data modify storage zeroboard:sim p set value [0.0d,0.0d,0.0d]
data modify storage zeroboard:sim q set value [0.0d,0.0d,0.0d]
data modify storage zeroboard:sim r set value [0.0f,0.0f]
data modify storage zeroboard:sim hr set value [0.0f,0.0f]
execute store result storage zeroboard:sim p[0] double 0.0001 run scoreboard players get #sim_x zc_ctrl
execute store result storage zeroboard:sim p[1] double 0.0001 run scoreboard players get #sim_y zc_ctrl
execute store result storage zeroboard:sim p[2] double 0.0001 run scoreboard players get #sim_z zc_ctrl
execute store result storage zeroboard:sim r[0] float 0.01 run scoreboard players get #sim_yaw zc_ctrl
data modify entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_pos,limit=1] Pos set from storage zeroboard:sim p
data modify entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_pos,limit=1] Rotation set from storage zeroboard:sim r
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_pos,limit=1] run function zeroboard:prediction/collision/update
