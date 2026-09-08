# Reduced rolls once per new strafe, including crystal retaliation.
# Vanilla leaves the native phase, target and RNG untouched.
execute unless score #last_dragon_phase zc_ctrl matches -1..10 run scoreboard players set #last_dragon_phase zc_ctrl -1
execute unless score #prev_dragon_phase zc_ctrl matches -1..10 run scoreboard players set #prev_dragon_phase zc_ctrl -1
execute if score fireball_chance settings matches 0 if score phase stats matches 1 unless score #last_dragon_phase zc_ctrl matches 1 run function practice:fireball_chance/reduced_roll
# No Fly needs two ticks of phase history for delayed crystal removal
scoreboard players operation #prev_dragon_phase zc_ctrl = #last_dragon_phase zc_ctrl
scoreboard players operation #last_dragon_phase zc_ctrl = phase stats
execute unless entity @e[type=minecraft:ender_dragon,limit=1] run scoreboard players set #last_dragon_phase zc_ctrl -1
execute unless entity @e[type=minecraft:ender_dragon,limit=1] run scoreboard players set #prev_dragon_phase zc_ctrl -1
