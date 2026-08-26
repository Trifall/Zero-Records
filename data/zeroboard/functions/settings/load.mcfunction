# rebuilds the settings entries this pack adds or extends, and carries forward
# anything saved under an older menu layout. called from load.
# base entries are edited in place (settings/extend), the pack's own are rebuilt from
# a template with just the saved value kept (settings/install).

# the in-place edits need one entry per index, see practice:gui/dedupe
data modify storage practice:gui src set from storage practice:gui pages[1].entries
function practice:gui/dedupe
data modify storage practice:gui pages[1].entries set from storage practice:gui clean
data modify storage practice:gui src set from storage practice:gui pages[1].defaults
function practice:gui/dedupe
data modify storage practice:gui pages[1].defaults set from storage practice:gui clean

# spawn menu migrations.
# the list has been renumbered twice as entries went in, so an old world still has the
# old index sitting in practice:gui. each one moves the stored value a single layout
# forward and sets its marker, so an old world walks up a version at a time and a
# current one skips the lot.
# keep them separate and in this order - collapsing them breaks any world that has not
# been through the earlier steps yet.
execute unless score #buried_v2 zc_ctrl matches 1 run function zeroboard:settings/migrate/spawn_v2
scoreboard players set #buried_v2 zc_ctrl 1
execute unless score #buried_v3 zc_ctrl matches 1 run function zeroboard:settings/migrate/spawn_v3
scoreboard players set #buried_v3 zc_ctrl 1
execute unless score #spawn_order_v4 zc_ctrl matches 1 run function zeroboard:settings/migrate/spawn_v4
scoreboard players set #spawn_order_v4 zc_ctrl 1

execute if data storage practice:gui pages[1].entries[{tag:{index:4b}}] if data storage practice:gui pages[1].defaults[{tag:{index:4b}}] run function zeroboard:settings/extend/spawn
execute if data storage practice:gui pages[1].entries[{tag:{index:3b}}] if data storage practice:gui pages[1].defaults[{tag:{index:3b}}] run function zeroboard:settings/extend/saturation
execute if data storage practice:gui pages[1].entries[{tag:{index:7b}}] if data storage practice:gui pages[1].defaults[{tag:{index:7b}}] run function zeroboard:settings/extend/rotation

# the base pack fills the top row's spare cells (slots 3-8) with panes. the pack's own
# controls go there instead, and index 18 (Death Skip) was retired
data remove storage practice:gui pages[1].entries[{Slot:3b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].entries[{Slot:4b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].entries[{Slot:5b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].entries[{Slot:6b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].entries[{Slot:7b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].entries[{Slot:8b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].defaults[{Slot:3b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].defaults[{Slot:4b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].defaults[{Slot:5b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].defaults[{Slot:6b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].defaults[{Slot:7b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].defaults[{Slot:8b,tag:{index:-1b}}]
data remove storage practice:gui pages[1].entries[{tag:{index:18b}}]
data remove storage practice:gui pages[1].defaults[{tag:{index:18b}}]
scoreboard players reset death_skip settings
scoreboard players reset #death_skip_entry zc_ctrl
scoreboard players reset #death_skip_default zc_ctrl

# Fly Chance
scoreboard players set #tmpl_value zc_ctrl -1
scoreboard players set #tmpl_default zc_ctrl -1
execute store result score #tmpl_value zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:14b}}].value
execute store result score #tmpl_default zc_ctrl run data get storage practice:gui pages[1].defaults[{tag:{index:14b}}].value
execute unless score #fly_order_v2 zc_ctrl matches 1 run function zeroboard:settings/migrate/fly_v2
scoreboard players set #fly_order_v2 zc_ctrl 1
data remove storage practice:gui pages[1].entries[{tag:{index:14b}}]
data remove storage practice:gui pages[1].defaults[{tag:{index:14b}}]
data modify storage practice:gui tmpl set value {Slot:3b,id:"minecraft:end_rod",Count:2b,size:5,value:2b,tag:{index:14b,display:{Name:'{"text":"Fly Chance","italic":"false","color":"dark_aqua"}',LoreGray:['{"text":"Ranked","color":"gray","italic":"false"}','{"text":"Vanilla","color":"gray","italic":"false"}','{"text":"No","color":"gray","italic":"false"}','{"text":"Always Fly (Y95)","color":"gray","italic":"false"}','{"text":"Custom","color":"gray","italic":"false"}'],LoreColor:['{"text":"Ranked","color":"gold","italic":"false"}','{"text":"Vanilla","color":"gold","italic":"false"}','{"text":"No","color":"gold","italic":"false"}','{"text":"Always Fly (Y95)","color":"gold","italic":"false"}','{"text":"Custom","color":"gold","italic":"false"}']}}}
function zeroboard:settings/install
scoreboard players operation fly_chance settings = #tmpl_value zc_ctrl

# On Crystal Break
scoreboard players set #tmpl_value zc_ctrl -1
scoreboard players set #tmpl_default zc_ctrl -1
execute store result score #tmpl_value zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:15b}}].value
execute store result score #tmpl_default zc_ctrl run data get storage practice:gui pages[1].defaults[{tag:{index:15b}}].value
data remove storage practice:gui pages[1].entries[{tag:{index:15b}}]
data remove storage practice:gui pages[1].defaults[{tag:{index:15b}}]
data modify storage practice:gui tmpl set value {Slot:4b,id:"minecraft:end_crystal",Count:2b,size:3,value:1b,tag:{index:15b,display:{Name:'{"text":"On Crystal Break","italic":"false","color":"dark_aqua"}',LoreGray:['{"text":"No Fly","color":"gray","italic":"false"}','{"text":"Always Fly","color":"gray","italic":"false"}','{"text":"Vanilla","color":"gray","italic":"false"}'],LoreColor:['{"text":"No Fly","color":"gold","italic":"false"}','{"text":"Always Fly","color":"gold","italic":"false"}','{"text":"Vanilla","color":"gold","italic":"false"}']}}}
function zeroboard:settings/install
scoreboard players operation crystal_break settings = #tmpl_value zc_ctrl

# Fireball Chance
scoreboard players set #tmpl_value zc_ctrl -1
scoreboard players set #tmpl_default zc_ctrl -1
execute store result score #tmpl_value zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:16b}}].value
execute store result score #tmpl_default zc_ctrl run data get storage practice:gui pages[1].defaults[{tag:{index:16b}}].value
data remove storage practice:gui pages[1].entries[{tag:{index:16b}}]
data remove storage practice:gui pages[1].defaults[{tag:{index:16b}}]
data modify storage practice:gui tmpl set value {Slot:5b,id:"minecraft:fire_charge",Count:1b,size:2,value:0b,tag:{index:16b,display:{Name:'{"text":"Fireball Chance","italic":"false","color":"dark_aqua"}',LoreGray:['{"text":"Reduced","color":"gray","italic":"false"}','{"text":"Vanilla","color":"gray","italic":"false"}'],LoreColor:['{"text":"Reduced","color":"gold","italic":"false"}','{"text":"Vanilla","color":"gold","italic":"false"}']}}}
function zeroboard:settings/install
scoreboard players operation fireball_chance settings = #tmpl_value zc_ctrl

# 1/8 Always Fly
scoreboard players set #tmpl_value zc_ctrl -1
scoreboard players set #tmpl_default zc_ctrl -1
execute store result score #tmpl_value zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:17b}}].value
execute store result score #tmpl_default zc_ctrl run data get storage practice:gui pages[1].defaults[{tag:{index:17b}}].value
data remove storage practice:gui pages[1].entries[{tag:{index:17b}}]
data remove storage practice:gui pages[1].defaults[{tag:{index:17b}}]
data modify storage practice:gui tmpl set value {Slot:6b,id:"minecraft:feather",Count:2b,size:4,value:0b,tag:{index:17b,display:{Name:'{"text":"1/8 Always Fly","italic":"false","color":"dark_aqua"}',LoreGray:['{"text":"Off","color":"gray","italic":"false"}','{"text":"Y92","color":"gray","italic":"false"}','{"text":"Y97","color":"gray","italic":"false"}','{"text":"Custom","color":"gray","italic":"false"}'],LoreColor:['{"text":"Off","color":"gold","italic":"false"}','{"text":"Y92","color":"gold","italic":"false"}','{"text":"Y97","color":"gold","italic":"false"}','{"text":"Custom","color":"gold","italic":"false"}']}}}
function zeroboard:settings/install
scoreboard players operation one_eighth_fly settings = #tmpl_value zc_ctrl

# Vanilla End Entry
scoreboard players set #tmpl_value zc_ctrl -1
scoreboard players set #tmpl_default zc_ctrl -1
execute store result score #tmpl_value zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:19b}}].value
execute store result score #tmpl_default zc_ctrl run data get storage practice:gui pages[1].defaults[{tag:{index:19b}}].value
data remove storage practice:gui pages[1].entries[{tag:{index:19b}}]
data remove storage practice:gui pages[1].defaults[{tag:{index:19b}}]
data modify storage practice:gui tmpl set value {Slot:7b,id:"minecraft:end_portal_frame",Count:1b,size:2,value:0b,tag:{index:19b,display:{Name:'{"text":"Vanilla End Entry","italic":"false","color":"dark_aqua"}',LoreGray:['{"text":"Off","color":"gray","italic":"false"}','{"text":"Dimension Load + Dragon Delay","color":"gray","italic":"false"}'],LoreColor:['{"text":"Off","color":"gold","italic":"false"}','{"text":"Dimension Load + Dragon Delay","color":"gold","italic":"false"}']}}}
function zeroboard:settings/install
scoreboard players operation vanilla_entry settings = #tmpl_value zc_ctrl

# base settings with more than two choices use a 2 item stack. left click empties the
# slot, right click leaves one behind, which practice:gui/click_event reads as the direction
data modify storage practice:gui pages[1].entries[{tag:{index:0b}}].Count set value 2b
data modify storage practice:gui pages[1].entries[{tag:{index:1b}}].Count set value 2b
data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].Count set value 2b
data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].Count set value 2b
data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].Count set value 2b
data modify storage practice:gui pages[1].entries[{tag:{index:8b}}].Count set value 2b
data modify storage practice:gui pages[1].entries[{tag:{index:10b}}].Count set value 2b
data modify storage practice:gui pages[1].entries[{tag:{index:11b}}].Count set value 2b
data modify storage practice:gui pages[1].defaults[{tag:{index:0b}}].Count set value 2b
data modify storage practice:gui pages[1].defaults[{tag:{index:1b}}].Count set value 2b
data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].Count set value 2b
data modify storage practice:gui pages[1].defaults[{tag:{index:4b}}].Count set value 2b
data modify storage practice:gui pages[1].defaults[{tag:{index:7b}}].Count set value 2b
data modify storage practice:gui pages[1].defaults[{tag:{index:8b}}].Count set value 2b
data modify storage practice:gui pages[1].defaults[{tag:{index:10b}}].Count set value 2b
data modify storage practice:gui pages[1].defaults[{tag:{index:11b}}].Count set value 2b

data modify storage practice:rotation_lookup values set value [[[[I;1095,1795,1144,1147],[I;2240,1805,1146,650],[I;3387,650,649,0],[I;437,658,657,0],[I;1095,1145,1144,0],[I;2240,1147,1146,0]],[[I;901,1800,1799,0],[I;2701,1800,1799,0],[I;901,1800,1799,0],[I;2701,1800,1799,0],[I;901,1800,1799,0],[I;2701,1800,1799,0]]],[[[I;1606,1805,657,650],[I;2264,1795,649,1147],[I;1606,658,657,0],[I;2264,650,649,0],[I;2914,1147,1146,0],[I;461,1145,1144,0]],[[I;2700,1800,1799,0],[I;900,1800,1799,0],[I;2700,1800,1799,0],[I;900,1800,1799,0],[I;2700,1800,1799,0],[I;900,1800,1799,0]]]]
