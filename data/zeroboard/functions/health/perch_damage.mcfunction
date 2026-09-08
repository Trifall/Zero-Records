# the absorption pool prevents vanilla sittingDamageReceived from advancing.
# count sampled damage instead: takeoff at 25% of 200 health, scaled by 100.
execute if score phase stats matches 5..7 run scoreboard players operation #sitting_damage100 zc_ctrl += #damage100 zc_ctrl
execute unless score phase stats matches 5..7 run scoreboard players set #sitting_damage100 zc_ctrl 0
execute if score #sitting_damage100 zc_ctrl matches 5001.. run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 4b
execute if score #sitting_damage100 zc_ctrl matches 5001.. run tellraw @a[tag=debug] {"text":"[DEBUG] Perch damage reached 25% - taking off","color":"dark_purple"}
execute if score #sitting_damage100 zc_ctrl matches 5001.. run scoreboard players set phase stats 4
execute if score #sitting_damage100 zc_ctrl matches 5001.. run scoreboard players set #sitting_damage100 zc_ctrl 0
