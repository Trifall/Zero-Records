# where the dragon ends up one tick later, from position / heading / velocity.
# same shape as vanilla dragon movement - turn toward the node, climb or dive at it,
# clamp the turn and pitch rates - in fixed point at 1/100 block and 1/100 degree.
# #sim_h0..#sim_h10 is the rolling height history vanilla uses to smooth vertical speed.
# runs as the zc_dragon_sim_pos marker. the execute position is a snapshot, so it is
# re-taken with `at @s` after every Pos write.
scoreboard players operation #sim_h10 zc_ctrl = #sim_h9 zc_ctrl
scoreboard players operation #sim_h9 zc_ctrl = #sim_h8 zc_ctrl
scoreboard players operation #sim_h8 zc_ctrl = #sim_h7 zc_ctrl
scoreboard players operation #sim_h7 zc_ctrl = #sim_h6 zc_ctrl
scoreboard players operation #sim_h6 zc_ctrl = #sim_h5 zc_ctrl
scoreboard players operation #sim_h5 zc_ctrl = #sim_h4 zc_ctrl
scoreboard players operation #sim_h4 zc_ctrl = #sim_h3 zc_ctrl
scoreboard players operation #sim_h3 zc_ctrl = #sim_h2 zc_ctrl
scoreboard players operation #sim_h2 zc_ctrl = #sim_h1 zc_ctrl
scoreboard players operation #sim_h1 zc_ctrl = #sim_h0 zc_ctrl
scoreboard players operation #sim_h0 zc_ctrl = #sim_y zc_ctrl
scoreboard players operation #sim_horizontal2 zc_ctrl = #sim_dx2 zc_ctrl
scoreboard players operation #sim_horizontal2 zc_ctrl += #sim_dz2 zc_ctrl
scoreboard players operation in sqrt = #sim_horizontal2 zc_ctrl
function zeroboard:prediction/sqrt
scoreboard players operation #sim_horizontal zc_ctrl = out sqrt
scoreboard players set #sim_vertical_add zc_ctrl 0
execute if score #sim_horizontal zc_ctrl matches 1.. run scoreboard players operation #sim_vertical_add zc_ctrl = #sim_dy zc_ctrl
execute if score #sim_horizontal zc_ctrl matches 1.. run scoreboard players operation #sim_vertical_add zc_ctrl *= #c100 zc_ctrl
execute if score #sim_horizontal zc_ctrl matches 1.. run scoreboard players operation #sim_vertical_add zc_ctrl /= #sim_horizontal zc_ctrl
execute if score #sim_horizontal zc_ctrl matches 0 if score #sim_dy zc_ctrl matches 1.. run scoreboard players set #sim_vertical_add zc_ctrl 300
execute if score #sim_horizontal zc_ctrl matches 0 if score #sim_dy zc_ctrl matches ..-1 run scoreboard players set #sim_vertical_add zc_ctrl -300
execute if score #sim_vertical_add zc_ctrl matches 301.. run scoreboard players set #sim_vertical_add zc_ctrl 300
execute if score #sim_vertical_add zc_ctrl matches ..-301 run scoreboard players set #sim_vertical_add zc_ctrl -300
scoreboard players operation #sim_vy zc_ctrl += #sim_vertical_add zc_ctrl
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #sim_x zc_ctrl
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #sim_y zc_ctrl
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #sim_z zc_ctrl
execute at @s facing 0.5 65 0.5 run tp @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] ^ ^ ^1 ~ ~
execute store result score #sim_target_yaw zc_ctrl run data get entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] Rotation[0] 100
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] run function zeroboard:prediction/unit
scoreboard players operation #sim_tx_unit zc_ctrl = #sim_ux zc_ctrl
scoreboard players operation #sim_ty_unit zc_ctrl = #sim_uy zc_ctrl
scoreboard players operation #sim_tz_unit zc_ctrl = #sim_uz zc_ctrl
scoreboard players add #sim_target_yaw zc_ctrl 18000
execute if score #sim_target_yaw zc_ctrl matches 18000.. run scoreboard players operation #sim_target_yaw zc_ctrl -= #c36000 zc_ctrl
execute if score #sim_yaw zc_ctrl matches 18000.. run scoreboard players operation #sim_yaw zc_ctrl -= #c36000 zc_ctrl
execute if score #sim_yaw zc_ctrl matches ..-18001 run scoreboard players operation #sim_yaw zc_ctrl += #c36000 zc_ctrl
scoreboard players operation #sim_yaw_error zc_ctrl = #sim_target_yaw zc_ctrl
scoreboard players operation #sim_yaw_error zc_ctrl -= #sim_yaw zc_ctrl
execute if score #sim_yaw_error zc_ctrl matches 18000.. run scoreboard players operation #sim_yaw_error zc_ctrl -= #c36000 zc_ctrl
execute if score #sim_yaw_error zc_ctrl matches ..-18001 run scoreboard players operation #sim_yaw_error zc_ctrl += #c36000 zc_ctrl
execute if score #sim_yaw_error zc_ctrl matches 5001.. run scoreboard players set #sim_yaw_error zc_ctrl 5000
execute if score #sim_yaw_error zc_ctrl matches ..-5001 run scoreboard players set #sim_yaw_error zc_ctrl -5000
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #sim_yaw zc_ctrl
data modify entity @s Rotation[1] set value 0f
execute at @s rotated as @s run tp @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] ^ ^ ^-1
scoreboard players operation #sim_tmp zc_ctrl = #sim_y zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl += #sim_vy zc_ctrl
execute store result entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] Pos[1] double 0.0001 run scoreboard players get #sim_tmp zc_ctrl
execute at @s facing entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] feet run tp @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] ^ ^ ^1
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] run function zeroboard:prediction/unit
scoreboard players operation #sim_hx_unit zc_ctrl = #sim_ux zc_ctrl
scoreboard players operation #sim_hy_unit zc_ctrl = #sim_uy zc_ctrl
scoreboard players operation #sim_hz_unit zc_ctrl = #sim_uz zc_ctrl
scoreboard players operation #sim_dot zc_ctrl = #sim_tx_unit zc_ctrl
scoreboard players operation #sim_dot zc_ctrl *= #sim_hx_unit zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_ty_unit zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #sim_hy_unit zc_ctrl
scoreboard players operation #sim_dot zc_ctrl += #sim_tmp zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_tz_unit zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #sim_hz_unit zc_ctrl
scoreboard players operation #sim_dot zc_ctrl += #sim_tmp zc_ctrl
scoreboard players operation #sim_dot zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_alignment zc_ctrl = #sim_dot zc_ctrl
scoreboard players add #sim_alignment zc_ctrl 5000
scoreboard players operation #sim_alignment zc_ctrl *= #c10000 zc_ctrl
scoreboard players operation #sim_alignment zc_ctrl /= #c15000 zc_ctrl
execute if score #sim_alignment zc_ctrl matches ..-1 run scoreboard players set #sim_alignment zc_ctrl 0
scoreboard players operation #sim_tmp zc_ctrl = #sim_vx zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #sim_vx zc_ctrl
scoreboard players operation #sim_speed2 zc_ctrl = #sim_tmp zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_vz zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #sim_vz zc_ctrl
scoreboard players operation #sim_speed2 zc_ctrl += #sim_tmp zc_ctrl
scoreboard players operation in sqrt = #sim_speed2 zc_ctrl
function zeroboard:prediction/sqrt
scoreboard players operation #sim_speed100 zc_ctrl = out sqrt
scoreboard players operation #sim_speed100 zc_ctrl /= #c100 zc_ctrl
scoreboard players add #sim_speed100 zc_ctrl 100
scoreboard players operation #sim_factor_den zc_ctrl = #sim_speed100 zc_ctrl
scoreboard players operation #sim_factor_den zc_ctrl *= #sim_speed100 zc_ctrl
scoreboard players operation #sim_yaw_factor zc_ctrl = #c70000000 zc_ctrl
scoreboard players operation #sim_yaw_factor zc_ctrl /= #sim_factor_den zc_ctrl
scoreboard players operation #sim_yaw_accel zc_ctrl *= #c8000 zc_ctrl
scoreboard players operation #sim_yaw_accel zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_yaw_error zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #sim_yaw_factor zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_yaw_accel zc_ctrl += #sim_tmp zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_yaw_accel zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl /= #c10 zc_ctrl
scoreboard players operation #sim_yaw zc_ctrl += #sim_tmp zc_ctrl
scoreboard players operation #sim_distance_factor zc_ctrl = #c200000000 zc_ctrl
scoreboard players add #sim_dist2 zc_ctrl 10000
scoreboard players operation #sim_distance_factor zc_ctrl /= #sim_dist2 zc_ctrl
scoreboard players remove #sim_dist2 zc_ctrl 10000
scoreboard players operation #sim_accel_term zc_ctrl = #sim_alignment zc_ctrl
scoreboard players operation #sim_accel_term zc_ctrl *= #sim_distance_factor zc_ctrl
scoreboard players operation #sim_accel_term zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #c10000 zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl -= #sim_distance_factor zc_ctrl
scoreboard players operation #sim_accel_term zc_ctrl += #sim_tmp zc_ctrl
scoreboard players operation #sim_accel zc_ctrl = #sim_accel_term zc_ctrl
scoreboard players operation #sim_accel zc_ctrl *= #c600 zc_ctrl
scoreboard players operation #sim_accel zc_ctrl /= #c10000 zc_ctrl
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #sim_yaw zc_ctrl
execute at @s rotated as @s run tp @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] ^ ^ ^-1
execute store result score #sim_ax zc_ctrl run data get entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] Pos[0] 10000
scoreboard players operation #sim_ax zc_ctrl -= #sim_x zc_ctrl
execute store result score #sim_az zc_ctrl run data get entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] Pos[2] 10000
scoreboard players operation #sim_az zc_ctrl -= #sim_z zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_ax zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #sim_accel zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_vx zc_ctrl += #sim_tmp zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_az zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #sim_accel zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_vz zc_ctrl += #sim_tmp zc_ctrl
scoreboard players operation #sim_move_x zc_ctrl = #sim_vx zc_ctrl
scoreboard players operation #sim_move_y zc_ctrl = #sim_vy zc_ctrl
scoreboard players operation #sim_move_z zc_ctrl = #sim_vz zc_ctrl
execute if score #sim_slow zc_ctrl matches 1 run scoreboard players add #sim_slow_ticks zc_ctrl 1
execute if score #sim_slow zc_ctrl matches 1 run scoreboard players operation #sim_move_x zc_ctrl *= #c8000 zc_ctrl
execute if score #sim_slow zc_ctrl matches 1 run scoreboard players operation #sim_move_x zc_ctrl /= #c10000 zc_ctrl
execute if score #sim_slow zc_ctrl matches 1 run scoreboard players operation #sim_move_y zc_ctrl *= #c8000 zc_ctrl
execute if score #sim_slow zc_ctrl matches 1 run scoreboard players operation #sim_move_y zc_ctrl /= #c10000 zc_ctrl
execute if score #sim_slow zc_ctrl matches 1 run scoreboard players operation #sim_move_z zc_ctrl *= #c8000 zc_ctrl
execute if score #sim_slow zc_ctrl matches 1 run scoreboard players operation #sim_move_z zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_x zc_ctrl += #sim_move_x zc_ctrl
scoreboard players operation #sim_y zc_ctrl += #sim_move_y zc_ctrl
scoreboard players operation #sim_z zc_ctrl += #sim_move_z zc_ctrl
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #sim_x zc_ctrl
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #sim_y zc_ctrl
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #sim_z zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_x zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl += #sim_vx zc_ctrl
execute store result entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] Pos[0] double 0.0001 run scoreboard players get #sim_tmp zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_y zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl += #sim_vy zc_ctrl
execute store result entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] Pos[1] double 0.0001 run scoreboard players get #sim_tmp zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_z zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl += #sim_vz zc_ctrl
execute store result entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] Pos[2] double 0.0001 run scoreboard players get #sim_tmp zc_ctrl
execute at @s facing entity @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] feet run tp @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] ^ ^ ^1
execute as @e[type=minecraft:armor_stand,tag=zc_dragon_sim_vector,limit=1] run function zeroboard:prediction/unit
scoreboard players operation #sim_dot zc_ctrl = #sim_ux zc_ctrl
scoreboard players operation #sim_dot zc_ctrl *= #sim_hx_unit zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_uy zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #sim_hy_unit zc_ctrl
scoreboard players operation #sim_dot zc_ctrl += #sim_tmp zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl = #sim_uz zc_ctrl
scoreboard players operation #sim_tmp zc_ctrl *= #sim_hz_unit zc_ctrl
scoreboard players operation #sim_dot zc_ctrl += #sim_tmp zc_ctrl
scoreboard players operation #sim_dot zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_damping zc_ctrl = #sim_dot zc_ctrl
scoreboard players operation #sim_damping zc_ctrl *= #c750 zc_ctrl
scoreboard players operation #sim_damping zc_ctrl /= #c10000 zc_ctrl
scoreboard players add #sim_damping zc_ctrl 8750
scoreboard players operation #sim_vx zc_ctrl *= #sim_damping zc_ctrl
scoreboard players operation #sim_vx zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_vy zc_ctrl *= #c9100 zc_ctrl
scoreboard players operation #sim_vy zc_ctrl /= #c10000 zc_ctrl
scoreboard players operation #sim_vz zc_ctrl *= #sim_damping zc_ctrl
scoreboard players operation #sim_vz zc_ctrl /= #c10000 zc_ctrl
function zeroboard:prediction/collision/update
scoreboard players add #sim_steps zc_ctrl 1
