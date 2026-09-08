# spend ten ticks in the Overworld so the client renders End entry.
# the platform clears FallDistance before returning.
scoreboard players set #vanilla_entry_pending zc_ctrl 0
execute if score vanilla_entry settings matches 1 run scoreboard players set #vanilla_entry_pending zc_ctrl 1
execute if score vanilla_entry settings matches 1 in minecraft:overworld run forceload add 495 495 505 505
execute if score vanilla_entry settings matches 1 in minecraft:overworld run fill 495 249 495 505 249 505 minecraft:barrier keep
execute if score vanilla_entry settings matches 1 in minecraft:overworld run tp @a 500 250 500 90 0
# hold the arena while the player is away: unloaded crystals look destroyed,
# and the delayed dragon spawn needs loaded chunks. reset releases the hold;
# tp_player is too early because EndDragonFight reacquires its ticket on a later scan.
execute if score vanilla_entry settings matches 1 in minecraft:the_end run forceload add -80 -80 80 80
