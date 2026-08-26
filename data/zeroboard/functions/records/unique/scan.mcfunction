# one step of the unique-only walk. cuts the head record down to a comparable key
# (tower, standing, cover, buried, pickaxe, approach), folds it into a matching group
# or keeps it for the next pass, then recurses on the tail.

data modify storage zeroboard:records work.unique_current set from storage zeroboard:records work.unique_scan[0]
scoreboard players set #candidate_pickaxe zc_ctrl 0
execute store result score #candidate_tower zc_ctrl run data get storage zeroboard:records work.unique_current.tower
execute store result score #candidate_standing zc_ctrl run data get storage zeroboard:records work.unique_current.standing
execute store result score #candidate_cover zc_ctrl run data get storage zeroboard:records work.unique_current.cover
execute store result score #candidate_buried zc_ctrl run data get storage zeroboard:records work.unique_current.buried
execute store result score #candidate_pickaxe zc_ctrl run data get storage zeroboard:records work.unique_current.pickaxe_code
scoreboard players set #candidate_approach zc_ctrl -1
execute store result score #candidate_approach zc_ctrl run data get storage zeroboard:records work.unique_current.approach_code
scoreboard players set #unique_match zc_ctrl 1
execute unless score #candidate_tower zc_ctrl = #unique_tower zc_ctrl run scoreboard players set #unique_match zc_ctrl 0
execute unless score #candidate_standing zc_ctrl = #unique_standing zc_ctrl run scoreboard players set #unique_match zc_ctrl 0
execute unless score #candidate_cover zc_ctrl = #unique_cover zc_ctrl run scoreboard players set #unique_match zc_ctrl 0
execute unless score #candidate_buried zc_ctrl = #unique_buried zc_ctrl run scoreboard players set #unique_match zc_ctrl 0
execute unless score #candidate_pickaxe zc_ctrl = #unique_pickaxe zc_ctrl run scoreboard players set #unique_match zc_ctrl 0
execute unless score #candidate_approach zc_ctrl = #unique_approach zc_ctrl run scoreboard players set #unique_match zc_ctrl 0
execute if score #unique_match zc_ctrl matches 1 run function zeroboard:records/unique/compare
execute if score #unique_match zc_ctrl matches 0 run data modify storage zeroboard:records work.unique_next append from storage zeroboard:records work.unique_current
data remove storage zeroboard:records work.unique_scan[0]
execute if data storage zeroboard:records work.unique_scan[0] run function zeroboard:records/unique/scan
