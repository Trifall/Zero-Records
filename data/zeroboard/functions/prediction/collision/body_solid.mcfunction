# body box, 6x4x6 blocks around the body marker, one layer at a time. mobGriefing off: anything but air and fire stops the dragon.
# runs at the marker; a layer that finds a block sets #sim_slow and the rest are skipped.
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/body_solid/y0
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/body_solid/y1
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/body_solid/y2
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/body_solid/y3
