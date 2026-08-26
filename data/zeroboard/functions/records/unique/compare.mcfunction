# faster of the group's best and the candidate, on whichever time the board shows
scoreboard players set #best_time zc_ctrl 0
scoreboard players set #best_finish zc_ctrl 0
execute store result score #best_time zc_ctrl run data get storage zeroboard:records work.unique_best.death_ticks
execute store result score #best_finish zc_ctrl run data get storage zeroboard:records work.unique_best.finish_ticks
execute if score #time_mode zc_ctrl matches 1 if score #best_finish zc_ctrl matches 1.. run scoreboard players operation #best_time zc_ctrl = #best_finish zc_ctrl
scoreboard players set #unique_time zc_ctrl 0
scoreboard players set #unique_finish zc_ctrl 0
execute store result score #unique_time zc_ctrl run data get storage zeroboard:records work.unique_current.death_ticks
execute store result score #unique_finish zc_ctrl run data get storage zeroboard:records work.unique_current.finish_ticks
execute if score #time_mode zc_ctrl matches 1 if score #unique_finish zc_ctrl matches 1.. run scoreboard players operation #unique_time zc_ctrl = #unique_finish zc_ctrl
execute if score #unique_time zc_ctrl < #best_time zc_ctrl run data modify storage zeroboard:records work.unique_best set from storage zeroboard:records work.unique_current
