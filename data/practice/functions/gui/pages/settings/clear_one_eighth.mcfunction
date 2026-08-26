# the diagonal Always Fly was just turned on, so drop the 1/8 override to Off
scoreboard players set one_eighth_fly settings 0
execute store result storage practice:gui pages[1].entries[{tag:{index:17b}}].value byte 1 run scoreboard players get one_eighth_fly settings
data modify storage practice:gui pages[1].entries[{tag:{index:17b}}].tag.display.Lore set from storage practice:gui pages[1].entries[{tag:{index:17b}}].tag.display.LoreGray
data modify storage practice:gui pages[1].entries[{tag:{index:17b}}].tag.display.Lore[0] set from storage practice:gui pages[1].entries[{tag:{index:17b}}].tag.display.LoreColor[0]
