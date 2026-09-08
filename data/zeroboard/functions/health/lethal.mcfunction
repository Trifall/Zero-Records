# keep Health positive for the write-back in health_display after a lethal hit.

data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 9
scoreboard players set phase stats 9
scoreboard players set #virtual_health100 zc_ctrl 100
