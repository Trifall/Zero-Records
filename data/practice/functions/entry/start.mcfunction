# lobby is already in the End. spend ten ticks on a temporary Overworld platform
# so the client renders the dimension change instead of a same-frame flash;
# standing on it also clears FallDistance (free-falling at Y320 dealt damage on
# every return to the End).
scoreboard players set #vanilla_entry_pending zc_ctrl 0
execute if score vanilla_entry settings matches 1 run scoreboard players set #vanilla_entry_pending zc_ctrl 1
execute if score vanilla_entry settings matches 1 in minecraft:overworld run forceload add 495 495 505 505
execute if score vanilla_entry settings matches 1 in minecraft:overworld run fill 495 249 495 505 249 505 minecraft:barrier keep
execute if score vanilla_entry settings matches 1 in minecraft:overworld run tp @a 500 250 500 90 0
