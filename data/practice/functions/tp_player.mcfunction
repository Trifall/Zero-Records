execute in minecraft:the_end run tp @a 100 49 0 90 0
execute if score #vanilla_entry_pending zc_ctrl matches 1 in minecraft:overworld run fill 495 249 495 505 249 505 minecraft:air replace minecraft:barrier
execute if score #vanilla_entry_pending zc_ctrl matches 1 in minecraft:overworld run forceload remove 495 495 505 505
execute if score #vanilla_entry_pending zc_ctrl matches 1 run scoreboard players set timer timer 0
scoreboard players set #vanilla_entry_pending zc_ctrl 0
