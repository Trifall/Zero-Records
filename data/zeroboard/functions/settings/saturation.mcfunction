scoreboard players operation setpoint saturation = saturation settings
execute if score saturation settings matches 21 run scoreboard players set setpoint saturation 20
scoreboard players operation diff saturation = setpoint saturation
scoreboard players operation diff saturation -= player saturation

scoreboard players set #odd_saturation zc_ctrl 0
execute if score diff saturation matches 1 run scoreboard players set #odd_saturation zc_ctrl 1
execute if score diff saturation matches 3 run scoreboard players set #odd_saturation zc_ctrl 1
execute if score diff saturation matches 5 run scoreboard players set #odd_saturation zc_ctrl 1
execute if score diff saturation matches 7 run scoreboard players set #odd_saturation zc_ctrl 1
execute if score diff saturation matches 9 run scoreboard players set #odd_saturation zc_ctrl 1
execute if score diff saturation matches 11 run scoreboard players set #odd_saturation zc_ctrl 1
execute if score diff saturation matches 13 run scoreboard players set #odd_saturation zc_ctrl 1
execute if score diff saturation matches 15 run scoreboard players set #odd_saturation zc_ctrl 1
execute if score diff saturation matches 17 run scoreboard players set #odd_saturation zc_ctrl 1
execute if score diff saturation matches 19 run scoreboard players set #odd_saturation zc_ctrl 1

execute if score diff saturation matches 1..2 run effect give @a minecraft:saturation 1 0
execute if score diff saturation matches 3..4 run effect give @a minecraft:saturation 1 1
execute if score diff saturation matches 5..6 run effect give @a minecraft:saturation 1 2
execute if score diff saturation matches 7..8 run effect give @a minecraft:saturation 1 3
execute if score diff saturation matches 9..10 run effect give @a minecraft:saturation 1 4
execute if score diff saturation matches 11..12 run effect give @a minecraft:saturation 1 5
execute if score diff saturation matches 13..14 run effect give @a minecraft:saturation 1 6
execute if score diff saturation matches 15..16 run effect give @a minecraft:saturation 1 7
execute if score diff saturation matches 17..18 run effect give @a minecraft:saturation 1 8
execute if score diff saturation matches 19..20 run effect give @a minecraft:saturation 1 9
execute if score #odd_saturation zc_ctrl matches 1 run effect give @a minecraft:hunger 1 204 true
execute if score #odd_saturation zc_ctrl matches 1 run schedule function zeroboard:settings/clear_hunger 4t replace
