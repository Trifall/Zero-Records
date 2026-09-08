data modify storage zeroboard:records work.page_source set value []
data modify storage zeroboard:records work.page_source set from storage zeroboard:records filtered
execute if score #time_mode zc_ctrl matches 1 run function zeroboard:records/finishing/apply
execute if score #unique_mode zc_ctrl matches 1 if score #unique_dirty zc_ctrl matches 1 run function zeroboard:records/unique/apply
execute if score #unique_mode zc_ctrl matches 1 run data modify storage zeroboard:records work.page_source set from storage zeroboard:records unique
scoreboard players set #page_total_records zc_ctrl 0
execute store result score #page_total_records zc_ctrl run data get storage zeroboard:records work.page_source
scoreboard players operation #page_total zc_ctrl = #page_total_records zc_ctrl
scoreboard players add #page_total zc_ctrl 4
scoreboard players operation #page_total zc_ctrl /= #c5 zc_ctrl
execute if score #page_total zc_ctrl matches ..0 run scoreboard players set #page_total zc_ctrl 1
scoreboard players operation ZPages zc_ctrl = #page_total zc_ctrl
scoreboard players operation #skip zc_ctrl = #page zc_ctrl
scoreboard players operation #skip zc_ctrl *= #c5 zc_ctrl
function zeroboard:display/skip
data modify storage zeroboard:records view set value []
execute if data storage zeroboard:records work.page_source[0] run data modify storage zeroboard:records view append from storage zeroboard:records work.page_source[0]
data remove storage zeroboard:records work.page_source[0]
execute if data storage zeroboard:records work.page_source[0] run data modify storage zeroboard:records view append from storage zeroboard:records work.page_source[0]
data remove storage zeroboard:records work.page_source[0]
execute if data storage zeroboard:records work.page_source[0] run data modify storage zeroboard:records view append from storage zeroboard:records work.page_source[0]
data remove storage zeroboard:records work.page_source[0]
execute if data storage zeroboard:records work.page_source[0] run data modify storage zeroboard:records view append from storage zeroboard:records work.page_source[0]
data remove storage zeroboard:records work.page_source[0]
execute if data storage zeroboard:records work.page_source[0] run data modify storage zeroboard:records view append from storage zeroboard:records work.page_source[0]
scoreboard players set #page_has zc_ctrl 0
execute if data storage zeroboard:records view[0] run scoreboard players set #page_has zc_ctrl 1
scoreboard players operation #page_display zc_ctrl = #page zc_ctrl
scoreboard players add #page_display zc_ctrl 1
scoreboard players operation ZPage zc_ctrl = #page_display zc_ctrl
scoreboard players set #page_next zc_ctrl 0
execute if data storage zeroboard:records work.page_source[1] run scoreboard players set #page_next zc_ctrl 1
execute if score #page zc_ctrl matches 0 if score #page_next zc_ctrl matches 0 as @e[tag=zc_page,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/page
execute if score #page zc_ctrl matches 0 if score #page_next zc_ctrl matches 1 as @e[tag=zc_page,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/page_next
execute if score #page zc_ctrl matches 1.. if score #page_next zc_ctrl matches 0 as @e[tag=zc_page,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/page_previous
execute if score #page zc_ctrl matches 1.. if score #page_next zc_ctrl matches 1 as @e[tag=zc_page,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/page_both
data modify entity @e[tag=zc_page,limit=1] CustomName set from block 139 63 0 Items[{Slot:0b}].tag.display.Name
function zeroboard:records/personal_best/format
data modify entity @e[tag=zc_pb,limit=1] CustomName set value '{"text":"PB: --","color":"light_purple","bold":true}'
execute if score #pb_ticks zc_ctrl matches 1.. if score ZPBHun zc_ctrl matches 0..9 as @e[tag=zc_pb,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/pb_low
execute if score #pb_ticks zc_ctrl matches 1.. if score ZPBHun zc_ctrl matches 10.. as @e[tag=zc_pb,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/pb
execute if score #pb_ticks zc_ctrl matches 1.. run data modify entity @e[tag=zc_pb,limit=1] CustomName set from block 139 63 0 Items[{Slot:0b}].tag.display.Name
data merge entity @e[tag=zc_empty,limit=1] {CustomNameVisible:0b}
execute as @e[tag=zc_record_line] run data merge entity @s {CustomNameVisible:0b}
execute unless data storage zeroboard:records view[0] run data merge entity @e[tag=zc_empty,limit=1] {CustomNameVisible:1b}

tag @e[tag=zc_target_line1] remove zc_target_line1
tag @e[tag=zc_target_line2] remove zc_target_line2
data modify storage zeroboard:records work.rows set from storage zeroboard:records view
tag @e[tag=zc_r0_line1,limit=1] add zc_target_line1
tag @e[tag=zc_r0_line2,limit=1] add zc_target_line2
execute if data storage zeroboard:records work.rows[0] run function zeroboard:display/row
tag @e[tag=zc_r1_line1,limit=1] add zc_target_line1
tag @e[tag=zc_r1_line2,limit=1] add zc_target_line2
execute if data storage zeroboard:records work.rows[0] run function zeroboard:display/row
tag @e[tag=zc_r2_line1,limit=1] add zc_target_line1
tag @e[tag=zc_r2_line2,limit=1] add zc_target_line2
execute if data storage zeroboard:records work.rows[0] run function zeroboard:display/row
tag @e[tag=zc_r3_line1,limit=1] add zc_target_line1
tag @e[tag=zc_r3_line2,limit=1] add zc_target_line2
execute if data storage zeroboard:records work.rows[0] run function zeroboard:display/row
tag @e[tag=zc_r4_line1,limit=1] add zc_target_line1
tag @e[tag=zc_r4_line2,limit=1] add zc_target_line2
execute if data storage zeroboard:records work.rows[0] run function zeroboard:display/row
