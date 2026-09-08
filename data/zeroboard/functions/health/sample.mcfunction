# sample damage from the absorption pool at 100x precision, then refill it.
# reading Health directly into a scoreboard would discard fractional damage.

execute store result score #virtual_health100 zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Health 100
execute store result score #absorption_now zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] AbsorptionAmount 100

scoreboard players operation #damage100 zc_ctrl = #absorption_buffer zc_ctrl
scoreboard players operation #damage100 zc_ctrl -= #absorption_now zc_ctrl
execute if score #damage100 zc_ctrl matches ..-1 run scoreboard players set #damage100 zc_ctrl 0
scoreboard players operation #virtual_health100 zc_ctrl -= #damage100 zc_ctrl

data modify entity @e[type=minecraft:ender_dragon,limit=1] AbsorptionAmount set value 2048.0f

# publish as whole hearts for everything that still reads "current health"
scoreboard players operation current health = #virtual_health100 zc_ctrl
scoreboard players operation current health /= #c100 zc_ctrl
execute if score #virtual_health100 zc_ctrl matches 1..99 run scoreboard players set current health 1
