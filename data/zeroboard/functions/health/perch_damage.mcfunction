# vanilla ends a perch once the dragon takes 25% of max health while sitting
# (hurt -> sittingDamageReceived -> Takeoff). the absorption pool freezes Health
# so that never fires - feed the pool drop sample already measured into the same
# counter. 25% of 200 = 50, counter is 100x.
execute if score phase stats matches 5..7 run scoreboard players operation #sitting_damage100 zc_ctrl += #damage100 zc_ctrl
execute unless score phase stats matches 5..7 run scoreboard players set #sitting_damage100 zc_ctrl 0
execute if score #sitting_damage100 zc_ctrl matches 5001.. run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 4b
execute if score #sitting_damage100 zc_ctrl matches 5001.. run tellraw @a[tag=debug] {"text":"[DEBUG] Perch damage reached 25% - taking off","color":"dark_purple"}
execute if score #sitting_damage100 zc_ctrl matches 5001.. run scoreboard players set phase stats 4
execute if score #sitting_damage100 zc_ctrl matches 5001.. run scoreboard players set #sitting_damage100 zc_ctrl 0
