# runs as the head marker, positioned as the sim marker and rotated by the head yaw /
# pitch. 6.5 blocks behind, lifted by #sim_part_y (the height history offset vanilla
# applies to the neck and head), then its 2x2x2 box is probed unless it matches the
# empty template at 0 250 0.
tp @s ^ ^ ^-6.5
data modify storage zeroboard:sim v set from entity @s Pos
execute store result score #sim_tmp zc_ctrl run data get storage zeroboard:sim v[1] 10000
scoreboard players operation #sim_tmp zc_ctrl += #sim_part_y zc_ctrl
execute store result storage zeroboard:sim v[1] double 0.0001 run scoreboard players get #sim_tmp zc_ctrl
data modify entity @s Pos set from storage zeroboard:sim v
execute if score #sim_mob_griefing zc_ctrl matches 1 at @s unless blocks ~-0.5 ~ ~-0.5 ~0.5 ~1 ~0.5 0 250 0 all run function zeroboard:prediction/collision/head_immune
execute if score #sim_mob_griefing zc_ctrl matches 0 at @s unless blocks ~-0.5 ~ ~-0.5 ~0.5 ~1 ~0.5 0 250 0 all run function zeroboard:prediction/collision/head_solid
