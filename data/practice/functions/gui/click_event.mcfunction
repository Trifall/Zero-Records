# settings entries are stacks of 2. right click takes half, left takes both.
# has to be read before the gui is rebuilt
scoreboard players set #reverse gui 0
execute if score page gui matches 1 if score index gui matches 0 in minecraft:the_end if data block 133 66 1 Items[{Count:1b,tag:{index:0b}}] run scoreboard players set #reverse gui 1
execute if score page gui matches 1 if score index gui matches 1 in minecraft:the_end if data block 133 66 1 Items[{Count:1b,tag:{index:1b}}] run scoreboard players set #reverse gui 1
execute if score page gui matches 1 if score index gui matches 3 in minecraft:the_end if data block 133 66 1 Items[{Count:1b,tag:{index:3b}}] run scoreboard players set #reverse gui 1
execute if score page gui matches 1 if score index gui matches 4 in minecraft:the_end if data block 133 66 1 Items[{Count:1b,tag:{index:4b}}] run scoreboard players set #reverse gui 1
execute if score page gui matches 1 if score index gui matches 7 in minecraft:the_end if data block 133 66 1 Items[{Count:1b,tag:{index:7b}}] run scoreboard players set #reverse gui 1
execute if score page gui matches 1 if score index gui matches 8 in minecraft:the_end if data block 133 66 1 Items[{Count:1b,tag:{index:8b}}] run scoreboard players set #reverse gui 1
execute if score page gui matches 1 if score index gui matches 10 in minecraft:the_end if data block 133 66 1 Items[{Count:1b,tag:{index:10b}}] run scoreboard players set #reverse gui 1
execute if score page gui matches 1 if score index gui matches 11 in minecraft:the_end if data block 133 66 1 Items[{Count:1b,tag:{index:11b}}] run scoreboard players set #reverse gui 1

function practice:gui/set_entry_active
execute if score page gui matches 0 run function practice:gui/pages/home/click_event
execute if score page gui matches 1 run function practice:gui/pages/settings/click_event

function practice:gui/load

execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~
