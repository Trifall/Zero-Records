# health at 100x. Health is a float but the scoreboard only sees whole hearts, so
# small hits round away. the dragon sits on a big absorption pool instead (set up in
# practice:spawn_dragon) - damage comes off absorption first, so the drop in
# AbsorptionAmount since last tick is exactly what landed. subtract, refill, repeat.
# guard with live fight + a dragon actually existing

execute store result score #virtual_health100 zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] Health 100
execute store result score #absorption_now zc_ctrl run data get entity @e[type=minecraft:ender_dragon,limit=1] AbsorptionAmount 100

# damage this tick = how far the pool fell below its refilled level
scoreboard players operation #damage100 zc_ctrl = #absorption_buffer zc_ctrl
scoreboard players operation #damage100 zc_ctrl -= #absorption_now zc_ctrl
execute if score #damage100 zc_ctrl matches ..-1 run scoreboard players set #damage100 zc_ctrl 0
scoreboard players operation #virtual_health100 zc_ctrl -= #damage100 zc_ctrl

# refill the pool for next tick
data modify entity @e[type=minecraft:ender_dragon,limit=1] AbsorptionAmount set value 2048.0f

# publish as whole hearts for everything that still reads "current health"
scoreboard players operation current health = #virtual_health100 zc_ctrl
scoreboard players operation current health /= #c100 zc_ctrl
execute if score #virtual_health100 zc_ctrl matches 1..99 run scoreboard players set current health 1
