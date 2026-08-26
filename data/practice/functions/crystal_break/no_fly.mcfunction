# the crystal callback fires the same tick the crystal breaks, after the function
# phase, and the crystal stays selectable one more tick - so the break is counted
# up to two ticks late. a tracked "phase before the break" is no good (none exists
# right after a spawn, which let a fast tower crystal keep its strafe). read the
# live phase and reason back: Holding is the only phase the callback strafes out
# of, a perch the only thing it takes off from.
scoreboard players set #nofly_acted zc_ctrl 0

# strafe that came in with the break -> back to Holding. a strafe already running
# before #prev_dragon_phase is organic, that one is fireball_chance's, not ours
execute if score phase stats matches 1 unless score #prev_dragon_phase zc_ctrl matches 1 run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 0b
execute if score phase stats matches 1 unless score #prev_dragon_phase zc_ctrl matches 1 run scoreboard players set #nofly_acted zc_ctrl 1
execute if score #nofly_acted zc_ctrl matches 1 run scoreboard players set phase stats 0

# takeoff off a perch -> back to that perch, the latest tracked one wins
scoreboard players set #nofly_perch zc_ctrl -1
execute if score #prev_dragon_phase zc_ctrl matches 5..7 run scoreboard players operation #nofly_perch zc_ctrl = #prev_dragon_phase zc_ctrl
execute if score #last_dragon_phase zc_ctrl matches 5..7 run scoreboard players operation #nofly_perch zc_ctrl = #last_dragon_phase zc_ctrl
execute if score phase stats matches 4 if score #nofly_perch zc_ctrl matches 5..7 store result entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase byte 1 run scoreboard players get #nofly_perch zc_ctrl
execute if score phase stats matches 4 if score #nofly_perch zc_ctrl matches 5..7 run scoreboard players set #nofly_acted zc_ctrl 1
execute if score phase stats matches 4 if score #nofly_perch zc_ctrl matches 5..7 run scoreboard players operation phase stats = #nofly_perch zc_ctrl

# anything else, the callback did not move the dragon - leave the flight path be
execute if score #nofly_acted zc_ctrl matches 1 run tellraw @a[tag=debug] {"text":"[DEBUG] Crystal break restored the pre-break phase","color":"dark_purple"}
execute if score #nofly_acted zc_ctrl matches 0 run tellraw @a[tag=debug] {"text":"[DEBUG] Crystal break needed no phase restore","color":"dark_purple"}
