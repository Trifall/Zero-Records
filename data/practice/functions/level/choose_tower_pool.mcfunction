# tower_pool_mode: 0 center, 1 left, 2 right
# falls back to the full list if the pool empties out

data modify storage practice:towers stack set from storage practice:towers towers
data remove storage practice:towers stack[{enabled:0b}]

execute if score tower_pool_mode settings matches 1.. run function practice:level/exclude_center_pick
execute if score tower_pool_mode settings matches 2 run function practice:level/exclude_left_pick
execute unless data storage practice:towers stack[0] run data modify storage practice:towers stack set from storage practice:towers towers
execute if score tower_pool_mode settings matches 1.. run function practice:level/exclude_center_pick
execute if score tower_pool_mode settings matches 2 run function practice:level/exclude_left_pick

execute store result score #tower_pool_size zc_ctrl run data get storage practice:towers stack
execute if score tower_pool_mode settings matches 0 if score direction_act settings matches 1 if score #tower_pool_size zc_ctrl matches 2.. run data remove storage practice:towers stack[{index:0b}]
execute store result score mod rng run data get storage practice:towers stack
function practice:random/generate
execute if score r rng matches 1.. run function practice:level/choose_tower_loop

execute store result score tower_pick settings run data get storage practice:towers stack[0].index
data modify storage practice:towers picked_name set from storage practice:towers stack[0].name
