# crystal removal can be counted two ticks after the callback
scoreboard players set #nofly_acted zc_ctrl 0

# leave a strafe that was already running before the break
execute if score phase stats matches 1 unless score #prev_dragon_phase zc_ctrl matches 1 run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 0b
execute if score phase stats matches 1 unless score #prev_dragon_phase zc_ctrl matches 1 run scoreboard players set #nofly_acted zc_ctrl 1
execute if score #nofly_acted zc_ctrl matches 1 run scoreboard players set phase stats 0

# restore the most recently observed perch
scoreboard players set #nofly_perch zc_ctrl -1
execute if score #prev_dragon_phase zc_ctrl matches 5..7 run scoreboard players operation #nofly_perch zc_ctrl = #prev_dragon_phase zc_ctrl
execute if score #last_dragon_phase zc_ctrl matches 5..7 run scoreboard players operation #nofly_perch zc_ctrl = #last_dragon_phase zc_ctrl
execute if score phase stats matches 4 if score #nofly_perch zc_ctrl matches 5..7 store result entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase byte 1 run scoreboard players get #nofly_perch zc_ctrl
execute if score phase stats matches 4 if score #nofly_perch zc_ctrl matches 5..7 run scoreboard players set #nofly_acted zc_ctrl 1
execute if score phase stats matches 4 if score #nofly_perch zc_ctrl matches 5..7 run scoreboard players operation phase stats = #nofly_perch zc_ctrl

execute if score #nofly_acted zc_ctrl matches 1 run tellraw @a[tag=debug] {"text":"[DEBUG] Crystal break restored the pre-break phase","color":"dark_purple"}
execute if score #nofly_acted zc_ctrl matches 0 run tellraw @a[tag=debug] {"text":"[DEBUG] Crystal break needed no phase restore","color":"dark_purple"}
