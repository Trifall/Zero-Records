# same as collision/head, 5.5 blocks behind with a 4x4x4 box.
tp @s ^ ^ ^-5.5
data modify storage zeroboard:sim v set from entity @s Pos
execute store result score #sim_tmp zc_ctrl run data get storage zeroboard:sim v[1] 10000
scoreboard players operation #sim_tmp zc_ctrl += #sim_part_y zc_ctrl
execute store result storage zeroboard:sim v[1] double 0.0001 run scoreboard players get #sim_tmp zc_ctrl
data modify entity @s Pos set from storage zeroboard:sim v
execute if score #sim_mob_griefing zc_ctrl matches 1 at @s unless blocks ~-1.5 ~ ~-1.5 ~1.5 ~3 ~1.5 0 250 0 all run function zeroboard:prediction/collision/neck_immune
execute if score #sim_mob_griefing zc_ctrl matches 0 at @s unless blocks ~-1.5 ~ ~-1.5 ~1.5 ~3 ~1.5 0 250 0 all run function zeroboard:prediction/collision/neck_solid
