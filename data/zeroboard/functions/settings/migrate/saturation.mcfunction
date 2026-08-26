# saturation went 7 -> 12 -> 22 choices. reads the saved entry / default into
# #sat_entry / #sat_default on the current numbering, clamped.
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
