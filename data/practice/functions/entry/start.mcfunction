# lobby is already in the End. spend ten ticks on a temporary Overworld platform
# so the client renders the dimension change instead of a same-frame flash;
# standing on it also clears FallDistance (free-falling at Y320 dealt damage on
# every return to the End).
scoreboard players set #vanilla_entry_pending zc_ctrl 0
execute if score vanilla_entry settings matches 1 run scoreboard players set #vanilla_entry_pending zc_ctrl 1
execute if score vanilla_entry settings matches 1 in minecraft:overworld run forceload add 495 495 505 505
execute if score vanilla_entry settings matches 1 in minecraft:overworld run fill 495 249 495 505 249 505 minecraft:barrier keep
execute if score vanilla_entry settings matches 1 in minecraft:overworld run tp @a 500 250 500 90 0
# the End only keeps the arena loaded through EndDragonFight's region ticket, and
# that ticket exists while a player is in the End. ten ticks away can drop the
# arena chunks: the 12t spawn then lands in an unloaded chunk and the crystals
# read as destroyed while their chunks are out. hold the arena ourselves. the
# fight's ticket only returns on its next player scan, up to a second after the
# return, so tp_player is too early to let go - reset releases it.
execute if score vanilla_entry settings matches 1 in minecraft:the_end run forceload add -80 -80 80 80
