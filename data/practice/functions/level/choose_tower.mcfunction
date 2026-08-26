# three towers now, not one - center plus both neighbours, each from its own pool

# center tower
data modify storage practice:gui pool_src set from storage practice:gui tower_pages.center
function practice:level/copy_enabled_towers
scoreboard players set tower_pool_mode settings 0
function practice:level/choose_tower_pool
scoreboard players operation tower_center settings = tower_pick settings
scoreboard players operation tower settings = tower_pick settings
data modify storage practice:towers active set from storage practice:towers picked_name

# left neighbour
data modify storage practice:gui pool_src set from storage practice:gui tower_pages.left
function practice:level/copy_enabled_towers
scoreboard players set tower_pool_mode settings 1
function practice:level/choose_tower_pool
scoreboard players operation tower_left settings = tower_pick settings

# right neighbour
data modify storage practice:gui pool_src set from storage practice:gui tower_pages.right
function practice:level/copy_enabled_towers
scoreboard players set tower_pool_mode settings 2
function practice:level/choose_tower_pool
scoreboard players operation tower_right settings = tower_pick settings

# clear last run's tags
tag @e[tag=tower] remove selected
tag @e[tag=tower] remove selected_left
tag @e[tag=tower] remove selected_center
tag @e[tag=tower] remove selected_right

# give selected_center tag to correct armorstand
execute if score location_act settings matches 0 run tag @e[tag=tower,tag=front] add selected_center
execute if score location_act settings matches 1 run tag @e[tag=tower,tag=back] add selected_center
execute if score direction_act settings matches 0 run tag @e[tag=tower,tag=selected_center,tag=!diagonal] remove selected_center
execute if score direction_act settings matches 1 run tag @e[tag=tower,tag=selected_center,tag=!straight] remove selected_center

# the neighbours are fixed per approach, so they are looked up by name
execute if score location_act settings matches 0 if score direction_act settings matches 1 run tag @e[tag=tower,name=Tower1] add selected_left
execute if score location_act settings matches 0 if score direction_act settings matches 0 run tag @e[tag=tower,name=Tower2] add selected_left
execute if score location_act settings matches 1 if score direction_act settings matches 1 run tag @e[tag=tower,name=Tower6] add selected_left
execute if score location_act settings matches 1 if score direction_act settings matches 0 run tag @e[tag=tower,name=Tower7] add selected_left

execute if score location_act settings matches 0 if score direction_act settings matches 1 run tag @e[tag=tower,name=Tower9] add selected_right
execute if score location_act settings matches 0 if score direction_act settings matches 0 run tag @e[tag=tower,name=Tower0] add selected_right
execute if score location_act settings matches 1 if score direction_act settings matches 1 run tag @e[tag=tower,name=Tower4] add selected_right
execute if score location_act settings matches 1 if score direction_act settings matches 0 run tag @e[tag=tower,name=Tower5] add selected_right

# set tower scores
tag @e[tag=tower,tag=selected_left] add selected
tag @e[tag=tower,tag=selected_center] add selected
tag @e[tag=tower,tag=selected_right] add selected
scoreboard players operation @e[tag=tower,tag=selected_left] tower_order = tower_left settings
scoreboard players operation @e[tag=tower,tag=selected_center] tower_order = tower_center settings
scoreboard players operation @e[tag=tower,tag=selected_right] tower_order = tower_right settings
