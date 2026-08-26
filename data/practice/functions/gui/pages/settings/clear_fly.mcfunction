# the 1/8 override was just turned on, so drop the diagonal Always Fly to No
scoreboard players set fly_chance settings 2
execute store result storage practice:gui pages[1].entries[{tag:{index:14b}}].value byte 1 run scoreboard players get fly_chance settings
data modify storage practice:gui pages[1].entries[{tag:{index:14b}}].tag.display.Lore set from storage practice:gui pages[1].entries[{tag:{index:14b}}].tag.display.LoreGray
data modify storage practice:gui pages[1].entries[{tag:{index:14b}}].tag.display.Lore[2] set from storage practice:gui pages[1].entries[{tag:{index:14b}}].tag.display.LoreColor[2]
