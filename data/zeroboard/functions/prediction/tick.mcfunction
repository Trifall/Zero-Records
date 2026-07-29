# one step per tick.
# flown twice from the same start: once with a clear path, once obstructed (#sim_slow).
# whichever branch matches what the real dragon does is the one that counts, so both
# have to be flown.
#   0 kick off
#   1 set up clear       2 fly it, hand over to 3
#   3 set up obstructed  4 fly it, then select
# stage gets snapshotted into #prediction_dispatch first, otherwise a stage that
# advances itself also gets run by the next branch in the same tick.

function zeroboard:prediction/validate
execute if score #prediction_valid zc_ctrl matches 0 run function zeroboard:prediction/cancel

scoreboard players operation #prediction_dispatch zc_ctrl = #prediction_stage zc_ctrl

execute if score #prediction_active zc_ctrl matches 1 if score #prediction_dispatch zc_ctrl matches 4 run function zeroboard:prediction/stage/fly_blocked
execute if score #prediction_active zc_ctrl matches 1 if score #prediction_dispatch zc_ctrl matches 3 run function zeroboard:prediction/stage/begin_blocked
execute if score #prediction_active zc_ctrl matches 1 if score #prediction_dispatch zc_ctrl matches 2 run function zeroboard:prediction/stage/fly_clear
execute if score #prediction_active zc_ctrl matches 1 if score #prediction_dispatch zc_ctrl matches 1 run function zeroboard:prediction/stage/begin_clear
execute if score #prediction_active zc_ctrl matches 1 if score #prediction_dispatch zc_ctrl matches 0 run scoreboard players set #prediction_stage zc_ctrl 1
