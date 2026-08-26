# rotation: cw / ccw / random / custom plus the fast and slow variants
data modify storage practice:gui hl set from storage practice:gui pages[1].entries[{tag:{index:7b}}]
data modify storage practice:gui hl.size set value 8
data modify storage practice:gui hl.tag.display.LoreGray set value ['{"text":"CW","color":"gray","italic":"false"}','{"text":"CCW","color":"gray","italic":"false"}','{"text":"Random","color":"gray","italic":"false"}','{"text":"Custom","color":"gray","italic":"false"}','{"text":"Fast CW","color":"gray","italic":"false"}','{"text":"Fast CCW","color":"gray","italic":"false"}','{"text":"Slow CW","color":"gray","italic":"false"}','{"text":"Slow CCW","color":"gray","italic":"false"}']
data modify storage practice:gui hl.tag.display.LoreColor set value ['{"text":"CW","color":"gold","italic":"false"}','{"text":"CCW","color":"gold","italic":"false"}','{"text":"Random","color":"gold","italic":"false"}','{"text":"Custom","color":"gold","italic":"false"}','{"text":"Fast CW","color":"gold","italic":"false"}','{"text":"Fast CCW","color":"gold","italic":"false"}','{"text":"Slow CW","color":"gold","italic":"false"}','{"text":"Slow CCW","color":"gold","italic":"false"}']
scoreboard players set #hl_value zc_ctrl -1
execute store result score #hl_value zc_ctrl run data get storage practice:gui hl.value
function practice:gui/highlight
data modify storage practice:gui pages[1].entries[{tag:{index:7b}}] set from storage practice:gui hl

data modify storage practice:gui hl.value set from storage practice:gui pages[1].defaults[{tag:{index:7b}}].value
scoreboard players set #hl_value zc_ctrl -1
execute store result score #hl_value zc_ctrl run data get storage practice:gui hl.value
function practice:gui/highlight
data modify storage practice:gui pages[1].defaults[{tag:{index:7b}}] set from storage practice:gui hl
