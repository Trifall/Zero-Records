# the center pick is off limits to both neighbours, the left pick to the right one
execute if score tower_pool_mode settings matches 1.. run scoreboard players operation #exclude zc_ctrl = tower_center settings
execute if score tower_pool_mode settings matches 1.. run function practice:level/exclude_pick
execute if score tower_pool_mode settings matches 2 run scoreboard players operation #exclude zc_ctrl = tower_left settings
execute if score tower_pool_mode settings matches 2 run function practice:level/exclude_pick
