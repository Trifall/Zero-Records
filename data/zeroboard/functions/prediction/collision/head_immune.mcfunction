# head box, 2x2x2 blocks around the head marker, one layer at a time. mobGriefing on: only dragon-immune blocks stop the dragon, the rest get eaten.
# runs at the marker; a layer that finds a block sets #sim_slow and the rest are skipped.
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/head_immune/y0
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/head_immune/y1
