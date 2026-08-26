scoreboard players operation last health = current health

# live fight reads health off the absorption pool, see zeroboard:health/sample.
# onecycle and the fountain flight still read Health straight off the entity
scoreboard players set #live_fight zc_ctrl 0
execute unless score onecycle flags matches 1 unless score flying_to_fountain flags matches 1 unless score in_lobby flags matches 1 run scoreboard players set #live_fight zc_ctrl 1
execute if score #live_fight zc_ctrl matches 1 if entity @e[type=minecraft:ender_dragon,limit=1] run function zeroboard:health/sample
execute if score #live_fight zc_ctrl matches 1 if entity @e[type=minecraft:ender_dragon,limit=1] run function zeroboard:health/perch_damage
execute if score onecycle flags matches 1 store result score current health run data get entity @e[type=minecraft:ender_dragon,limit=1] Health
execute if score flying_to_fountain flags matches 1 store result score current health run data get entity @e[type=minecraft:ender_dragon,limit=1] Health

scoreboard players operation diff health = last health
scoreboard players operation diff health -= current health

# killing blow? health_display_damaged prints the uncapped hit too
scoreboard players set #lethal_damage zc_ctrl 0
execute if score #live_fight zc_ctrl matches 1 if score #virtual_health100 zc_ctrl matches ..0 run scoreboard players set #lethal_damage zc_ctrl 1

execute if score crystal_damage health matches 1 run function practice:crystal_damage

# clamped, a lethal hit must not write Health <= 0
execute if score #live_fight zc_ctrl matches 1 if score #virtual_health100 zc_ctrl matches ..0 run function zeroboard:health/lethal
execute if score #live_fight zc_ctrl matches 1 if score current health matches ..0 run scoreboard players set current health 1
execute if score #live_fight zc_ctrl matches 1 if entity @e[type=minecraft:ender_dragon,limit=1] store result entity @e[type=minecraft:ender_dragon,limit=1] Health float 0.01 run scoreboard players get #virtual_health100 zc_ctrl

# set helth diff to 0 if damage is not valid
execute if score flying_to_fountain flags matches 1 run scoreboard players set diff health 0
execute if score in_lobby flags matches 1 run scoreboard players set diff health 0

# dragon was damaged
execute unless score flying_to_fountain flags matches 1 unless score in_lobby flags matches 1 if score diff health matches 1.. run function practice:health_display_damaged

execute if score cooldown health matches 0.. run scoreboard players remove cooldown health 1

# iframe display
execute if score iframe settings matches 0 if score cooldown health matches 0.. run function practice:iframe_display

execute store result bossbar minecraft:dragon value run scoreboard players get current health
