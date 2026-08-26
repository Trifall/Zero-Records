data modify storage practice:gui hl set from storage practice:gui pages[1].entries[{active:1b}]
execute store result score value gui run data get storage practice:gui hl.value
execute store result score size gui run data get storage practice:gui hl.size

scoreboard players add value gui 1
execute if score #reverse gui matches 1 run scoreboard players remove value gui 2
execute if score value gui matches ..-1 run scoreboard players operation value gui += size gui
scoreboard players operation value gui %= size gui

execute store result storage practice:gui hl.value byte 1 run scoreboard players get value gui
scoreboard players operation #hl_value zc_ctrl = value gui
function practice:gui/highlight
data modify storage practice:gui pages[1].entries[{active:1b}] set from storage practice:gui hl
