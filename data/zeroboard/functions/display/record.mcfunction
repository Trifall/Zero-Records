# tower column
scoreboard players set ZRTower zc_ctrl 0
scoreboard players set ZRStand zc_ctrl 0
scoreboard players set ZRMin zc_ctrl 0
scoreboard players set ZRSec zc_ctrl 0
scoreboard players set ZRHun zc_ctrl 0
scoreboard players set ZRCover zc_ctrl -1
scoreboard players set ZRBuried zc_ctrl -1
scoreboard players set ZRPick zc_ctrl 0
scoreboard players set ZRFist zc_ctrl 0
scoreboard players set ZRDeathTicks zc_ctrl 0
scoreboard players set ZRFinishTicks zc_ctrl 0
execute store result score ZRTower zc_ctrl run data get storage zeroboard:records work.render.tower
execute store result score ZRStand zc_ctrl run data get storage zeroboard:records work.render.standing
execute store result score ZRMin zc_ctrl run data get storage zeroboard:records work.render.minutes
execute store result score ZRSec zc_ctrl run data get storage zeroboard:records work.render.seconds
execute store result score ZRCover zc_ctrl run data get storage zeroboard:records work.render.cover
execute store result score ZRBuried zc_ctrl run data get storage zeroboard:records work.render.buried
execute store result score ZRPick zc_ctrl run data get storage zeroboard:records work.render.pickaxe_code
execute store result score ZRDeathTicks zc_ctrl run data get storage zeroboard:records work.render.death_ticks
execute store result score ZRFinishTicks zc_ctrl run data get storage zeroboard:records work.render.finish_ticks
execute if data storage zeroboard:records work.render{cover:2,pickaxe:"Fist"} run scoreboard players set ZRFist zc_ctrl 1
execute if score ZRCover zc_ctrl matches 0 run scoreboard players set ZRPick zc_ctrl 0

# short label for the board
data modify storage zeroboard:records work.render.tower_short set value "Unknown"
execute if score ZRTower zc_ctrl matches 76 run data modify storage zeroboard:records work.render.tower_short set value "S-76"
execute if score ZRTower zc_ctrl matches 79 run data modify storage zeroboard:records work.render.tower_short set value "C-79"
execute if score ZRTower zc_ctrl matches 82 run data modify storage zeroboard:records work.render.tower_short set value "C-82"
execute if score ZRTower zc_ctrl matches 85 run data modify storage zeroboard:records work.render.tower_short set value "M-85"
execute if score ZRTower zc_ctrl matches 88 run data modify storage zeroboard:records work.render.tower_short set value "M-88"
execute if score ZRTower zc_ctrl matches 91 run data modify storage zeroboard:records work.render.tower_short set value "M-91"
execute if score ZRTower zc_ctrl matches 94 run data modify storage zeroboard:records work.render.tower_short set value "T-94"
execute if score ZRTower zc_ctrl matches 97 run data modify storage zeroboard:records work.render.tower_short set value "T-97"
execute if score ZRTower zc_ctrl matches 100 run data modify storage zeroboard:records work.render.tower_short set value "T-100"
execute if score ZRTower zc_ctrl matches 103 run data modify storage zeroboard:records work.render.tower_short set value "TB-103"
execute if data storage zeroboard:records work.render{hundredths:"00"} run scoreboard players set ZRHun zc_ctrl 0
execute if data storage zeroboard:records work.render{hundredths:"05"} run scoreboard players set ZRHun zc_ctrl 5
execute if data storage zeroboard:records work.render{hundredths:"10"} run scoreboard players set ZRHun zc_ctrl 10
execute if data storage zeroboard:records work.render{hundredths:"15"} run scoreboard players set ZRHun zc_ctrl 15
execute if data storage zeroboard:records work.render{hundredths:"20"} run scoreboard players set ZRHun zc_ctrl 20
execute if data storage zeroboard:records work.render{hundredths:"25"} run scoreboard players set ZRHun zc_ctrl 25
execute if data storage zeroboard:records work.render{hundredths:"30"} run scoreboard players set ZRHun zc_ctrl 30
execute if data storage zeroboard:records work.render{hundredths:"35"} run scoreboard players set ZRHun zc_ctrl 35
execute if data storage zeroboard:records work.render{hundredths:"40"} run scoreboard players set ZRHun zc_ctrl 40
execute if data storage zeroboard:records work.render{hundredths:"45"} run scoreboard players set ZRHun zc_ctrl 45
execute if data storage zeroboard:records work.render{hundredths:"50"} run scoreboard players set ZRHun zc_ctrl 50
execute if data storage zeroboard:records work.render{hundredths:"55"} run scoreboard players set ZRHun zc_ctrl 55
execute if data storage zeroboard:records work.render{hundredths:"60"} run scoreboard players set ZRHun zc_ctrl 60
execute if data storage zeroboard:records work.render{hundredths:"65"} run scoreboard players set ZRHun zc_ctrl 65
execute if data storage zeroboard:records work.render{hundredths:"70"} run scoreboard players set ZRHun zc_ctrl 70
execute if data storage zeroboard:records work.render{hundredths:"75"} run scoreboard players set ZRHun zc_ctrl 75
execute if data storage zeroboard:records work.render{hundredths:"80"} run scoreboard players set ZRHun zc_ctrl 80
execute if data storage zeroboard:records work.render{hundredths:"85"} run scoreboard players set ZRHun zc_ctrl 85
execute if data storage zeroboard:records work.render{hundredths:"90"} run scoreboard players set ZRHun zc_ctrl 90
execute if data storage zeroboard:records work.render{hundredths:"95"} run scoreboard players set ZRHun zc_ctrl 95
scoreboard players operation ZRTimeTicks zc_ctrl = ZRMin zc_ctrl
scoreboard players operation ZRTimeTicks zc_ctrl *= #twelve_hundred zc_ctrl
scoreboard players operation #time_part zc_ctrl = ZRSec zc_ctrl
scoreboard players operation #time_part zc_ctrl *= #twenty zc_ctrl
scoreboard players operation ZRTimeTicks zc_ctrl += #time_part zc_ctrl
scoreboard players operation #time_part zc_ctrl = ZRHun zc_ctrl
scoreboard players operation #time_part zc_ctrl /= #five zc_ctrl
scoreboard players operation ZRTimeTicks zc_ctrl += #time_part zc_ctrl
execute if score ZRDeathTicks zc_ctrl matches 1.. run scoreboard players operation ZRTimeTicks zc_ctrl = ZRDeathTicks zc_ctrl
execute if score #time_mode zc_ctrl matches 1 if score ZRFinishTicks zc_ctrl matches 1.. run scoreboard players operation ZRTimeTicks zc_ctrl = ZRFinishTicks zc_ctrl

# ticks -> m/s/hundredths
scoreboard players operation ZRMin zc_ctrl = ZRTimeTicks zc_ctrl
scoreboard players operation ZRMin zc_ctrl /= #twelve_hundred zc_ctrl
scoreboard players operation ZRSec zc_ctrl = ZRTimeTicks zc_ctrl
scoreboard players operation ZRSec zc_ctrl /= #twenty zc_ctrl
scoreboard players operation ZRSec zc_ctrl %= #sixty zc_ctrl
scoreboard players operation ZRHun zc_ctrl = ZRTimeTicks zc_ctrl
scoreboard players operation ZRHun zc_ctrl %= #twenty zc_ctrl
scoreboard players operation ZRHun zc_ctrl *= #five zc_ctrl

scoreboard players operation ZRTotalSec zc_ctrl = ZRMin zc_ctrl
scoreboard players operation ZRTotalSec zc_ctrl *= #sixty zc_ctrl
scoreboard players operation ZRTotalSec zc_ctrl += ZRSec zc_ctrl

# spawn column
data modify storage zeroboard:records work.render.spawn_short set value "Unknown"
execute if score ZRCover zc_ctrl matches 0 run data modify storage zeroboard:records work.render.spawn_short set value "Open"
execute if score ZRCover zc_ctrl matches 1 run data modify storage zeroboard:records work.render.spawn_short set value "Overhang"
execute if score ZRBuried zc_ctrl matches 52 run data modify storage zeroboard:records work.render.spawn_short set value "O52"
execute if score ZRBuried zc_ctrl matches 53 run data modify storage zeroboard:records work.render.spawn_short set value "O53"
execute if score ZRBuried zc_ctrl matches 54 run data modify storage zeroboard:records work.render.spawn_short set value "O54"
execute if score ZRBuried zc_ctrl matches 55 run data modify storage zeroboard:records work.render.spawn_short set value "O55"
execute if score ZRBuried zc_ctrl matches 56 run data modify storage zeroboard:records work.render.spawn_short set value "O56"
execute if score ZRBuried zc_ctrl matches 57 run data modify storage zeroboard:records work.render.spawn_short set value "O57"
execute if score ZRBuried zc_ctrl matches 58 run data modify storage zeroboard:records work.render.spawn_short set value "O58"
execute if score ZRBuried zc_ctrl matches 59 run data modify storage zeroboard:records work.render.spawn_short set value "O59"
execute if score ZRBuried zc_ctrl matches 60 run data modify storage zeroboard:records work.render.spawn_short set value "O60"
execute if score ZRBuried zc_ctrl matches 61 run data modify storage zeroboard:records work.render.spawn_short set value "O61"
execute if score ZRBuried zc_ctrl matches 62 run data modify storage zeroboard:records work.render.spawn_short set value "O62"
execute if score ZRBuried zc_ctrl matches 63 run data modify storage zeroboard:records work.render.spawn_short set value "O63"
execute if score ZRBuried zc_ctrl matches 64 run data modify storage zeroboard:records work.render.spawn_short set value "O64"
execute if score ZRBuried zc_ctrl matches 65 run data modify storage zeroboard:records work.render.spawn_short set value "O65"
data modify storage zeroboard:records work.render.approach_short set value "Unknown"
execute if data storage zeroboard:records work.render{approach:"Front Diagonal CW"} run data modify storage zeroboard:records work.render.approach_short set value "Front CW"
execute if data storage zeroboard:records work.render{approach:"Back Diagonal CW"} run data modify storage zeroboard:records work.render.approach_short set value "Back CW"
execute if data storage zeroboard:records work.render{approach:"Front Straight CW"} run data modify storage zeroboard:records work.render.approach_short set value "Front 1/8 CW"
execute if data storage zeroboard:records work.render{approach:"Back Straight CW"} run data modify storage zeroboard:records work.render.approach_short set value "Back 1/8 CW"
execute if data storage zeroboard:records work.render{approach:"Front Diagonal CCW"} run data modify storage zeroboard:records work.render.approach_short set value "Front CCW"
execute if data storage zeroboard:records work.render{approach:"Back Diagonal CCW"} run data modify storage zeroboard:records work.render.approach_short set value "Back CCW"
execute if data storage zeroboard:records work.render{approach:"Front Straight CCW"} run data modify storage zeroboard:records work.render.approach_short set value "Front 1/8 CCW"
execute if data storage zeroboard:records work.render{approach:"Back Straight CCW"} run data modify storage zeroboard:records work.render.approach_short set value "Back 1/8 CCW"

execute if score ZRHun zc_ctrl matches 0 as @e[tag=zc_target_line1,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line1_whole
execute if score ZRHun zc_ctrl matches 1..9 as @e[tag=zc_target_line1,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line1_low
execute if score ZRHun zc_ctrl matches 10.. as @e[tag=zc_target_line1,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line1
data modify entity @e[tag=zc_target_line1,limit=1] CustomName set from block 139 63 0 Items[{Slot:0b}].tag.display.Name
execute if score ZRPick zc_ctrl matches 0 as @e[tag=zc_target_line2,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line2
execute if score ZRFist zc_ctrl matches 1 as @e[tag=zc_target_line2,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line2_none
execute if score ZRPick zc_ctrl matches 1 as @e[tag=zc_target_line2,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line2_stone
execute if score ZRPick zc_ctrl matches 2 as @e[tag=zc_target_line2,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line2_iron
execute if score ZRPick zc_ctrl matches 3 as @e[tag=zc_target_line2,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line2_diamond
execute if score ZRPick zc_ctrl matches 4 as @e[tag=zc_target_line2,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line2_netherite
execute if score ZRPick zc_ctrl matches 5 as @e[tag=zc_target_line2,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line2_gold
execute if score ZRPick zc_ctrl matches 6 as @e[tag=zc_target_line2,limit=1] at @s run loot replace block 139 63 0 container.0 loot zeroboard:render/line2_wood
data modify entity @e[tag=zc_target_line2,limit=1] CustomName set from block 139 63 0 Items[{Slot:0b}].tag.display.Name
data merge entity @e[tag=zc_target_line1,limit=1] {CustomNameVisible:1b}
data merge entity @e[tag=zc_target_line2,limit=1] {CustomNameVisible:1b}
