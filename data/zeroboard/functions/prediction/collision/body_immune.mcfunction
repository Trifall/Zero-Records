# body box, 6x4x6 blocks around the body marker, one layer at a time. mobGriefing on: only dragon-immune blocks stop the dragon, the rest get eaten.
# runs at the marker; a layer that finds a block sets #sim_slow and the rest are skipped.
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/body_immune/y0
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/body_immune/y1
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/body_immune/y2
execute if score #sim_slow zc_ctrl matches 0 run function zeroboard:prediction/collision/body_immune/y3
