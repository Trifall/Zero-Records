# settings entries are stacks of 2. right click takes one and leaves one, left takes
# both - so after a right click the chest still holds every item the view put there.
# has to be read before the gui is rebuilt
scoreboard players set #reverse gui 0
execute if score page gui matches 1 in minecraft:the_end store result score #chest_items gui run data get block 133 66 1 Items
execute if score page gui matches 1 store result score #view_items gui run data get storage practice:gui settings_view
execute if score page gui matches 1 if score #chest_items gui = #view_items gui run scoreboard players set #reverse gui 1

function practice:gui/set_entry_active
execute if score page gui matches 0 run function practice:gui/pages/home/click_event
execute if score page gui matches 1 run function practice:gui/pages/settings/click_event

function practice:gui/load

execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~
