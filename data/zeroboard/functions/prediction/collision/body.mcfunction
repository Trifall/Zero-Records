# runs as the body marker, positioned and rotated as the sim marker. half a block
# behind, then its 6x4x6 box is probed unless it matches the empty template at 0 250 0.
tp @s ^ ^ ^-0.5
execute if score #sim_mob_griefing zc_ctrl matches 1 at @s unless blocks ~-2.5 ~ ~-2.5 ~2.5 ~3 ~2.5 0 250 0 all run function zeroboard:prediction/collision/body_immune
execute if score #sim_mob_griefing zc_ctrl matches 0 at @s unless blocks ~-2.5 ~ ~-2.5 ~2.5 ~3 ~2.5 0 250 0 all run function zeroboard:prediction/collision/body_solid
