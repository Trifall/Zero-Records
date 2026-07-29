data modify storage zeroboard:records work.unique_best set from storage zeroboard:records work.unique_source[0]
data remove storage zeroboard:records work.unique_source[0]
scoreboard players set #unique_pickaxe zc_ctrl 0
execute store result score #unique_tower zc_ctrl run data get storage zeroboard:records work.unique_best.tower
execute store result score #unique_standing zc_ctrl run data get storage zeroboard:records work.unique_best.standing
execute store result score #unique_cover zc_ctrl run data get storage zeroboard:records work.unique_best.cover
execute store result score #unique_buried zc_ctrl run data get storage zeroboard:records work.unique_best.buried
execute store result score #unique_pickaxe zc_ctrl run data get storage zeroboard:records work.unique_best.pickaxe_code
scoreboard players set #unique_approach zc_ctrl -1
execute if data storage zeroboard:records work.unique_best{approach:"Front Diagonal CW"} run scoreboard players set #unique_approach zc_ctrl 0
execute if data storage zeroboard:records work.unique_best{approach:"Back Diagonal CW"} run scoreboard players set #unique_approach zc_ctrl 1
execute if data storage zeroboard:records work.unique_best{approach:"Front Straight CW"} run scoreboard players set #unique_approach zc_ctrl 2
execute if data storage zeroboard:records work.unique_best{approach:"Back Straight CW"} run scoreboard players set #unique_approach zc_ctrl 3
execute if data storage zeroboard:records work.unique_best{approach:"Front Diagonal CCW"} run scoreboard players set #unique_approach zc_ctrl 4
execute if data storage zeroboard:records work.unique_best{approach:"Back Diagonal CCW"} run scoreboard players set #unique_approach zc_ctrl 5
execute if data storage zeroboard:records work.unique_best{approach:"Front Straight CCW"} run scoreboard players set #unique_approach zc_ctrl 6
execute if data storage zeroboard:records work.unique_best{approach:"Back Straight CCW"} run scoreboard players set #unique_approach zc_ctrl 7
data modify storage zeroboard:records work.unique_scan set value []
data modify storage zeroboard:records work.unique_scan set from storage zeroboard:records work.unique_source
data modify storage zeroboard:records work.unique_next set value []
execute if data storage zeroboard:records work.unique_scan[0] run function zeroboard:records/unique/scan
data modify storage zeroboard:records unique append from storage zeroboard:records work.unique_best
data modify storage zeroboard:records work.unique_source set from storage zeroboard:records work.unique_next
execute if data storage zeroboard:records work.unique_source[0] run function zeroboard:records/unique/group
