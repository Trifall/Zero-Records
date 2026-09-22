# flown twice from the same start: once with a clear path, once obstructed (#sim_slow).
# whichever branch matches what the real dragon does is the one that counts, so both
# have to be flown.
#   0 kick off
#   1 set up clear       2 fly it, hand over to 3
#   3 set up obstructed  4 fly it, then select
# the stages are dispatched in order so each one falls straight through to the next in
# the same tick. #sim_budget is the step allowance for the whole tick, shared by both
# branches, so a branch that lands mid-tick hands the rest to the other one.

function zeroboard:prediction/validate
execute if score #prediction_valid zc_ctrl matches 0 run function zeroboard:prediction/cancel

scoreboard players set #sim_budget zc_ctrl 100

execute if score #prediction_active zc_ctrl matches 1 if score #prediction_stage zc_ctrl matches 0 run scoreboard players set #prediction_stage zc_ctrl 1
execute if score #prediction_active zc_ctrl matches 1 if score #prediction_stage zc_ctrl matches 1 run function zeroboard:prediction/stage/begin_clear
execute if score #prediction_active zc_ctrl matches 1 if score #prediction_stage zc_ctrl matches 2 run function zeroboard:prediction/stage/fly_clear
execute if score #prediction_active zc_ctrl matches 1 if score #prediction_stage zc_ctrl matches 3 run function zeroboard:prediction/stage/begin_blocked
execute if score #prediction_active zc_ctrl matches 1 if score #prediction_stage zc_ctrl matches 4 run function zeroboard:prediction/stage/fly_blocked
