data modify storage zeroboard:records work.unique_time set from storage zeroboard:records work.unique_best
function zeroboard:records/unique/read_time
scoreboard players operation #best_time zc_ctrl = #unique_time zc_ctrl
data modify storage zeroboard:records work.unique_time set from storage zeroboard:records work.unique_current
function zeroboard:records/unique/read_time
execute if score #unique_time zc_ctrl < #best_time zc_ctrl run data modify storage zeroboard:records work.unique_best set from storage zeroboard:records work.unique_current
