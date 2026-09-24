# keep Health positive for the write-back in health_display after a lethal hit.
# vanilla only does that for a flying dragon - one sitting or hovering on the
# fountain just dies there, which is the normal onecycle kill

scoreboard players set #perch_kill zc_ctrl 0
execute if score onecycle flags matches 1 if score phase stats matches 5..7 run scoreboard players set #perch_kill zc_ctrl 1
execute if score onecycle flags matches 1 if score phase stats matches 10 run scoreboard players set #perch_kill zc_ctrl 1

execute if score #perch_kill zc_ctrl matches 0 run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 9
execute if score #perch_kill zc_ctrl matches 0 run scoreboard players set #virtual_health100 zc_ctrl 100
execute if score #perch_kill zc_ctrl matches 1 run scoreboard players set #virtual_health100 zc_ctrl 0
scoreboard players set phase stats 9
