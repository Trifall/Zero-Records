# head box, 2x2x2 blocks around the head marker, one layer at a time. mobGriefing off: anything but air and fire stops the dragon.
# runs at the marker; a layer that finds a block sets #sim_slow and the rest are skipped.
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/head_solid/y0
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/head_solid/y1
