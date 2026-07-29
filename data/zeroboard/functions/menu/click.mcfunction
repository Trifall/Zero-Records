scoreboard players set #explosives_click zc_ctrl 0
scoreboard players set #menu_tnt_count zc_ctrl 0
scoreboard players set #clear_click zc_ctrl 0
scoreboard players operation #clear_click zc_ctrl = #clear_armed zc_ctrl
execute in minecraft:the_end store result score #menu_tnt_count zc_ctrl run data get block 139 65 0 Items[{tag:{zeroboard_selector:2b}}].Count
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:2b}}] run scoreboard players set #explosives_click zc_ctrl 1
execute in minecraft:the_end if data block 139 65 0 Items[{tag:{zeroboard_selector:2b}}] unless score #menu_tnt_count zc_ctrl = #menu_tnt_expected zc_ctrl run scoreboard players set #explosives_click zc_ctrl 2

scoreboard players set #filter_action zc_ctrl 0
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:0b}}] run scoreboard players set #filter_action zc_ctrl 1
execute if score #filter_action zc_ctrl matches 1 run function zeroboard:filter/change
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:9b}}] run scoreboard players set #filter_action zc_ctrl 2
execute if score #filter_action zc_ctrl matches 2 run function zeroboard:filter/change
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:1b}}] run scoreboard players set #filter_action zc_ctrl 3
execute if score #filter_action zc_ctrl matches 3 run function zeroboard:filter/change
execute if score #explosives_click zc_ctrl matches 1 run scoreboard players set #filter_action zc_ctrl 4
execute if score #filter_action zc_ctrl matches 4 run function zeroboard:filter/change
execute if score #explosives_click zc_ctrl matches 2 run scoreboard players set #filter_action zc_ctrl 5
execute if score #filter_action zc_ctrl matches 5 run function zeroboard:filter/change
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:4b}}] run scoreboard players set #filter_action zc_ctrl 6
execute if score #filter_action zc_ctrl matches 6 run function zeroboard:filter/change
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:5b}}] run scoreboard players set #filter_action zc_ctrl 7
execute if score #filter_action zc_ctrl matches 7 run function zeroboard:filter/change
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:6b}}] run scoreboard players set #filter_action zc_ctrl 8
execute if score #filter_action zc_ctrl matches 8 run function zeroboard:filter/change
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:10b}}] run scoreboard players set #filter_action zc_ctrl 9
execute if score #filter_action zc_ctrl matches 9 run function zeroboard:filter/change

execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:11b}}] run function zeroboard:display/toggle_time
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:12b}}] run function zeroboard:records/unique/toggle
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:13b}}] if score #clear_click zc_ctrl matches 0 run function zeroboard:records/clear/arm
execute in minecraft:the_end unless data block 139 65 0 Items[{tag:{zeroboard_selector:13b}}] if score #clear_click zc_ctrl matches 1 run function zeroboard:records/clear/confirm
