# rebuilds the settings entries this pack adds or extends, and carries forward
# anything saved under an older menu layout. called from load.

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

data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].size set value 19
data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreGray set value ['{"text":"Random","color":"gray","italic":"false"}','{"text":"Actually Random","color":"gray","italic":"false"}','{"text":"Random Buried","color":"gray","italic":"false"}','{"text":"Open","color":"gray","italic":"false"}','{"text":"Overhang","color":"gray","italic":"false"}','{"text":"Buried 52","color":"gray","italic":"false"}','{"text":"Buried 53","color":"gray","italic":"false"}','{"text":"Buried 54","color":"gray","italic":"false"}','{"text":"Buried 55","color":"gray","italic":"false"}','{"text":"Buried 56","color":"gray","italic":"false"}','{"text":"Buried 57","color":"gray","italic":"false"}','{"text":"Buried 58","color":"gray","italic":"false"}','{"text":"Buried 59","color":"gray","italic":"false"}','{"text":"Buried 60","color":"gray","italic":"false"}','{"text":"Buried 61","color":"gray","italic":"false"}','{"text":"Buried 62","color":"gray","italic":"false"}','{"text":"Buried 63","color":"gray","italic":"false"}','{"text":"Buried 64","color":"gray","italic":"false"}','{"text":"Buried 65","color":"gray","italic":"false"}']
data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor set value ['{"text":"Random","color":"gold","italic":"false"}','{"text":"Actually Random","color":"gold","italic":"false"}','{"text":"Random Buried","color":"gold","italic":"false"}','{"text":"Open","color":"gold","italic":"false"}','{"text":"Overhang","color":"gold","italic":"false"}','{"text":"Buried 52","color":"gold","italic":"false"}','{"text":"Buried 53","color":"gold","italic":"false"}','{"text":"Buried 54","color":"gold","italic":"false"}','{"text":"Buried 55","color":"gold","italic":"false"}','{"text":"Buried 56","color":"gold","italic":"false"}','{"text":"Buried 57","color":"gold","italic":"false"}','{"text":"Buried 58","color":"gold","italic":"false"}','{"text":"Buried 59","color":"gold","italic":"false"}','{"text":"Buried 60","color":"gold","italic":"false"}','{"text":"Buried 61","color":"gold","italic":"false"}','{"text":"Buried 62","color":"gold","italic":"false"}','{"text":"Buried 63","color":"gold","italic":"false"}','{"text":"Buried 64","color":"gold","italic":"false"}','{"text":"Buried 65","color":"gold","italic":"false"}']
data modify storage practice:gui pages[1].defaults[{tag:{index:4b}}].size set value 19
data modify storage practice:gui pages[1].defaults[{tag:{index:4b}}].value set value 3b
data modify storage practice:gui pages[1].defaults[{tag:{index:4b}}].tag.display.LoreGray set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreGray
data modify storage practice:gui pages[1].defaults[{tag:{index:4b}}].tag.display.LoreColor set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor
data modify storage practice:gui pages[1].defaults[{tag:{index:4b}}].tag.display.Lore set from storage practice:gui pages[1].defaults[{tag:{index:4b}}].tag.display.LoreGray
data modify storage practice:gui pages[1].defaults[{tag:{index:4b}}].tag.display.Lore[0] set from storage practice:gui pages[1].defaults[{tag:{index:4b}}].tag.display.LoreColor[0]

execute store result score #spawn_gui zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:4b}}].value
data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreGray
execute if score #spawn_gui zc_ctrl matches 0 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[0] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[0]
execute if score #spawn_gui zc_ctrl matches 1 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[1] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[1]
execute if score #spawn_gui zc_ctrl matches 2 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[2] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[2]
execute if score #spawn_gui zc_ctrl matches 3 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[3] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[3]
execute if score #spawn_gui zc_ctrl matches 4 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[4] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[4]
execute if score #spawn_gui zc_ctrl matches 5 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[5] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[5]
execute if score #spawn_gui zc_ctrl matches 6 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[6] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[6]
execute if score #spawn_gui zc_ctrl matches 7 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[7] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[7]
execute if score #spawn_gui zc_ctrl matches 8 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[8] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[8]
execute if score #spawn_gui zc_ctrl matches 9 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[9] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[9]
execute if score #spawn_gui zc_ctrl matches 10 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[10] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[10]
execute if score #spawn_gui zc_ctrl matches 11 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[11] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[11]
execute if score #spawn_gui zc_ctrl matches 12 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[12] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[12]
execute if score #spawn_gui zc_ctrl matches 13 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[13] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[13]
execute if score #spawn_gui zc_ctrl matches 14 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[14] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[14]
execute if score #spawn_gui zc_ctrl matches 15 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[15] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[15]
execute if score #spawn_gui zc_ctrl matches 16 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[16] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[16]
execute if score #spawn_gui zc_ctrl matches 17 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[17] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[17]
execute if score #spawn_gui zc_ctrl matches 18 run data modify storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.Lore[18] set from storage practice:gui pages[1].entries[{tag:{index:4b}}].tag.display.LoreColor[18]

scoreboard players set #sat_entry zc_ctrl 0
scoreboard players set #sat_default zc_ctrl 0
scoreboard players set #sat_entry_old zc_ctrl 0
scoreboard players set #sat_default_old zc_ctrl 0
scoreboard players set #sat_legacy_entry zc_ctrl 0
scoreboard players set #sat_legacy_default zc_ctrl 0
scoreboard players set #sat_v1_entry zc_ctrl 0
scoreboard players set #sat_v1_default zc_ctrl 0
execute store result score #sat_entry zc_ctrl run data get storage practice:gui pages[1].entries[{tag:{index:3b}}].value
execute store result score #sat_default zc_ctrl run data get storage practice:gui pages[1].defaults[{tag:{index:3b}}].value
scoreboard players operation #sat_entry_old zc_ctrl = #sat_entry zc_ctrl
scoreboard players operation #sat_default_old zc_ctrl = #sat_default zc_ctrl
execute if data storage practice:gui pages[1].entries[{tag:{index:3b},size:7}] run scoreboard players set #sat_legacy_entry zc_ctrl 1
execute if data storage practice:gui pages[1].defaults[{tag:{index:3b},size:7}] run scoreboard players set #sat_legacy_default zc_ctrl 1
execute if data storage practice:gui pages[1].entries[{tag:{index:3b},size:12}] run scoreboard players set #sat_v1_entry zc_ctrl 1
execute if data storage practice:gui pages[1].defaults[{tag:{index:3b},size:12}] run scoreboard players set #sat_v1_default zc_ctrl 1
execute if score #sat_legacy_entry zc_ctrl matches 1 if score #sat_entry_old zc_ctrl matches 1 run scoreboard players set #sat_entry zc_ctrl 2
execute if score #sat_legacy_entry zc_ctrl matches 1 if score #sat_entry_old zc_ctrl matches 2 run scoreboard players set #sat_entry zc_ctrl 4
execute if score #sat_legacy_entry zc_ctrl matches 1 if score #sat_entry_old zc_ctrl matches 3 run scoreboard players set #sat_entry zc_ctrl 6
execute if score #sat_legacy_entry zc_ctrl matches 1 if score #sat_entry_old zc_ctrl matches 4 run scoreboard players set #sat_entry zc_ctrl 8
execute if score #sat_legacy_entry zc_ctrl matches 1 if score #sat_entry_old zc_ctrl matches 5 run scoreboard players set #sat_entry zc_ctrl 10
execute if score #sat_legacy_entry zc_ctrl matches 1 if score #sat_entry_old zc_ctrl matches 6 run scoreboard players set #sat_entry zc_ctrl 21
execute if score #sat_legacy_default zc_ctrl matches 1 if score #sat_default_old zc_ctrl matches 1 run scoreboard players set #sat_default zc_ctrl 2
execute if score #sat_legacy_default zc_ctrl matches 1 if score #sat_default_old zc_ctrl matches 2 run scoreboard players set #sat_default zc_ctrl 4
execute if score #sat_legacy_default zc_ctrl matches 1 if score #sat_default_old zc_ctrl matches 3 run scoreboard players set #sat_default zc_ctrl 6
execute if score #sat_legacy_default zc_ctrl matches 1 if score #sat_default_old zc_ctrl matches 4 run scoreboard players set #sat_default zc_ctrl 8
execute if score #sat_legacy_default zc_ctrl matches 1 if score #sat_default_old zc_ctrl matches 5 run scoreboard players set #sat_default zc_ctrl 10
execute if score #sat_legacy_default zc_ctrl matches 1 if score #sat_default_old zc_ctrl matches 6 run scoreboard players set #sat_default zc_ctrl 21
execute if score #sat_v1_entry zc_ctrl matches 1 if score #sat_entry_old zc_ctrl matches 11 run scoreboard players set #sat_entry zc_ctrl 21
execute if score #sat_v1_default zc_ctrl matches 1 if score #sat_default_old zc_ctrl matches 11 run scoreboard players set #sat_default zc_ctrl 21
execute unless score #sat_entry zc_ctrl matches 0..21 run scoreboard players set #sat_entry zc_ctrl 4
execute unless score #sat_default zc_ctrl matches 0..21 run scoreboard players set #sat_default zc_ctrl 21

data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].size set value 22
data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreGray set value ['{"text":"None","color":"gray","italic":"false"}','{"text":"1 Point","color":"gray","italic":"false"}','{"text":"2 Points","color":"gray","italic":"false"}','{"text":"3 Points","color":"gray","italic":"false"}','{"text":"4 Points","color":"gray","italic":"false"}','{"text":"5 Points","color":"gray","italic":"false"}','{"text":"6 Points","color":"gray","italic":"false"}','{"text":"7 Points","color":"gray","italic":"false"}','{"text":"8 Points","color":"gray","italic":"false"}','{"text":"9 Points","color":"gray","italic":"false"}','{"text":"10 Points","color":"gray","italic":"false"}','{"text":"11 Points","color":"gray","italic":"false"}','{"text":"12 Points","color":"gray","italic":"false"}','{"text":"13 Points","color":"gray","italic":"false"}','{"text":"14 Points","color":"gray","italic":"false"}','{"text":"15 Points","color":"gray","italic":"false"}','{"text":"16 Points","color":"gray","italic":"false"}','{"text":"17 Points","color":"gray","italic":"false"}','{"text":"18 Points","color":"gray","italic":"false"}','{"text":"19 Points","color":"gray","italic":"false"}','{"text":"20 Points","color":"gray","italic":"false"}','{"text":"Max","color":"gray","italic":"false"}']
data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor set value ['{"text":"None","color":"gold","italic":"false"}','{"text":"1 Point","color":"gold","italic":"false"}','{"text":"2 Points","color":"gold","italic":"false"}','{"text":"3 Points","color":"gold","italic":"false"}','{"text":"4 Points","color":"gold","italic":"false"}','{"text":"5 Points","color":"gold","italic":"false"}','{"text":"6 Points","color":"gold","italic":"false"}','{"text":"7 Points","color":"gold","italic":"false"}','{"text":"8 Points","color":"gold","italic":"false"}','{"text":"9 Points","color":"gold","italic":"false"}','{"text":"10 Points","color":"gold","italic":"false"}','{"text":"11 Points","color":"gold","italic":"false"}','{"text":"12 Points","color":"gold","italic":"false"}','{"text":"13 Points","color":"gold","italic":"false"}','{"text":"14 Points","color":"gold","italic":"false"}','{"text":"15 Points","color":"gold","italic":"false"}','{"text":"16 Points","color":"gold","italic":"false"}','{"text":"17 Points","color":"gold","italic":"false"}','{"text":"18 Points","color":"gold","italic":"false"}','{"text":"19 Points","color":"gold","italic":"false"}','{"text":"20 Points","color":"gold","italic":"false"}','{"text":"Max","color":"gold","italic":"false"}']
data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreGray
execute store result storage practice:gui pages[1].entries[{tag:{index:3b}}].value byte 1 run scoreboard players get #sat_entry zc_ctrl
execute if score #sat_entry zc_ctrl matches 0 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[0] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[0]
execute if score #sat_entry zc_ctrl matches 1 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[1] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[1]
execute if score #sat_entry zc_ctrl matches 2 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[2] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[2]
execute if score #sat_entry zc_ctrl matches 3 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[3] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[3]
execute if score #sat_entry zc_ctrl matches 4 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[4] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[4]
execute if score #sat_entry zc_ctrl matches 5 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[5] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[5]
execute if score #sat_entry zc_ctrl matches 6 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[6] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[6]
execute if score #sat_entry zc_ctrl matches 7 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[7] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[7]
execute if score #sat_entry zc_ctrl matches 8 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[8] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[8]
execute if score #sat_entry zc_ctrl matches 9 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[9] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[9]
execute if score #sat_entry zc_ctrl matches 10 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[10] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[10]
execute if score #sat_entry zc_ctrl matches 11 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[11] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[11]
execute if score #sat_entry zc_ctrl matches 12 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[12] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[12]
execute if score #sat_entry zc_ctrl matches 13 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[13] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[13]
execute if score #sat_entry zc_ctrl matches 14 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[14] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[14]
execute if score #sat_entry zc_ctrl matches 15 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[15] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[15]
execute if score #sat_entry zc_ctrl matches 16 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[16] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[16]
execute if score #sat_entry zc_ctrl matches 17 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[17] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[17]
execute if score #sat_entry zc_ctrl matches 18 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[18] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[18]
execute if score #sat_entry zc_ctrl matches 19 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[19] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[19]
execute if score #sat_entry zc_ctrl matches 20 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[20] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[20]
execute if score #sat_entry zc_ctrl matches 21 run data modify storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.Lore[21] set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor[21]
data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].size set value 22
data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreGray set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreGray
data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor set from storage practice:gui pages[1].entries[{tag:{index:3b}}].tag.display.LoreColor
data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreGray
execute store result storage practice:gui pages[1].defaults[{tag:{index:3b}}].value byte 1 run scoreboard players get #sat_default zc_ctrl
execute if score #sat_default zc_ctrl matches 0 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[0] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[0]
execute if score #sat_default zc_ctrl matches 1 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[1] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[1]
execute if score #sat_default zc_ctrl matches 2 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[2] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[2]
execute if score #sat_default zc_ctrl matches 3 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[3] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[3]
execute if score #sat_default zc_ctrl matches 4 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[4] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[4]
execute if score #sat_default zc_ctrl matches 5 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[5] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[5]
execute if score #sat_default zc_ctrl matches 6 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[6] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[6]
execute if score #sat_default zc_ctrl matches 7 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[7] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[7]
execute if score #sat_default zc_ctrl matches 8 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[8] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[8]
execute if score #sat_default zc_ctrl matches 9 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[9] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[9]
execute if score #sat_default zc_ctrl matches 10 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[10] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[10]
execute if score #sat_default zc_ctrl matches 11 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[11] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[11]
execute if score #sat_default zc_ctrl matches 12 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[12] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[12]
execute if score #sat_default zc_ctrl matches 13 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[13] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[13]
execute if score #sat_default zc_ctrl matches 14 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[14] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[14]
execute if score #sat_default zc_ctrl matches 15 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[15] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[15]
execute if score #sat_default zc_ctrl matches 16 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[16] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[16]
execute if score #sat_default zc_ctrl matches 17 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[17] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[17]
execute if score #sat_default zc_ctrl matches 18 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[18] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[18]
execute if score #sat_default zc_ctrl matches 19 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[19] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[19]
execute if score #sat_default zc_ctrl matches 20 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[20] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[20]
execute if score #sat_default zc_ctrl matches 21 run data modify storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.Lore[21] set from storage practice:gui pages[1].defaults[{tag:{index:3b}}].tag.display.LoreColor[21]
scoreboard players operation saturation settings = #sat_entry zc_ctrl

data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].size set value 8
data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreGray set value ['{"text":"CW","color":"gray","italic":"false"}','{"text":"CCW","color":"gray","italic":"false"}','{"text":"Random","color":"gray","italic":"false"}','{"text":"Custom","color":"gray","italic":"false"}','{"text":"Fast CW","color":"gray","italic":"false"}','{"text":"Fast CCW","color":"gray","italic":"false"}','{"text":"Slow CW","color":"gray","italic":"false"}','{"text":"Slow CCW","color":"gray","italic":"false"}']
data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreColor set value ['{"text":"CW","color":"gold","italic":"false"}','{"text":"CCW","color":"gold","italic":"false"}','{"text":"Random","color":"gold","italic":"false"}','{"text":"Custom","color":"gold","italic":"false"}','{"text":"Fast CW","color":"gold","italic":"false"}','{"text":"Fast CCW","color":"gold","italic":"false"}','{"text":"Slow CW","color":"gold","italic":"false"}','{"text":"Slow CCW","color":"gold","italic":"false"}']
data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.Lore set from storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreGray
execute if data storage practice:gui pages[1].entries[{tag:{index:7b},value:0b}] run data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.Lore[0] set from storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreColor[0]
execute if data storage practice:gui pages[1].entries[{tag:{index:7b},value:1b}] run data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.Lore[1] set from storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreColor[1]
execute if data storage practice:gui pages[1].entries[{tag:{index:7b},value:2b}] run data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.Lore[2] set from storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreColor[2]
execute if data storage practice:gui pages[1].entries[{tag:{index:7b},value:3b}] run data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.Lore[3] set from storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreColor[3]
execute if data storage practice:gui pages[1].entries[{tag:{index:7b},value:4b}] run data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.Lore[4] set from storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreColor[4]
execute if data storage practice:gui pages[1].entries[{tag:{index:7b},value:5b}] run data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.Lore[5] set from storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreColor[5]
execute if data storage practice:gui pages[1].entries[{tag:{index:7b},value:6b}] run data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.Lore[6] set from storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreColor[6]
execute if data storage practice:gui pages[1].entries[{tag:{index:7b},value:7b}] run data modify storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.Lore[7] set from storage practice:gui pages[1].entries[{tag:{index:7b}}].tag.display.LoreColor[7]
data modify storage practice:gui pages[1].defaults[{tag:{index:7b}}].size set value 8
data modify storage practice:gui pages[1].defaults[{tag:{index:7b}}].tag.display.LoreGray set value ['{"text":"CW","color":"gray","italic":"false"}','{"text":"CCW","color":"gray","italic":"false"}','{"text":"Random","color":"gray","italic":"false"}','{"text":"Custom","color":"gray","italic":"false"}','{"text":"Fast CW","color":"gray","italic":"false"}','{"text":"Fast CCW","color":"gray","italic":"false"}','{"text":"Slow CW","color":"gray","italic":"false"}','{"text":"Slow CCW","color":"gray","italic":"false"}']
data modify storage practice:gui pages[1].defaults[{tag:{index:7b}}].tag.display.LoreColor set value ['{"text":"CW","color":"gold","italic":"false"}','{"text":"CCW","color":"gold","italic":"false"}','{"text":"Random","color":"gold","italic":"false"}','{"text":"Custom","color":"gold","italic":"false"}','{"text":"Fast CW","color":"gold","italic":"false"}','{"text":"Fast CCW","color":"gold","italic":"false"}','{"text":"Slow CW","color":"gold","italic":"false"}','{"text":"Slow CCW","color":"gold","italic":"false"}']
data modify storage practice:gui pages[1].defaults[{tag:{index:7b}}].tag.display.Lore set value ['{"text":"CW","color":"gray","italic":"false"}','{"text":"CCW","color":"gray","italic":"false"}','{"text":"Random","color":"gold","italic":"false"}','{"text":"Custom","color":"gray","italic":"false"}','{"text":"Fast CW","color":"gray","italic":"false"}','{"text":"Fast CCW","color":"gray","italic":"false"}','{"text":"Slow CW","color":"gray","italic":"false"}','{"text":"Slow CCW","color":"gray","italic":"false"}']

# settings with more than two choices use a 2 item stack. left click empties the slot,
# right click leaves one behind, which practice:gui/click_event reads as the direction
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
