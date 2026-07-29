# virtual health hit 0, so that was the kill. force the death phase and put the pool
# back to a heart, else the write-back in health_display shoves a negative Health
# onto the entity. guard with live fight + #virtual_health100 <= 0

data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 9
scoreboard players set phase stats 9
scoreboard players set #virtual_health100 zc_ctrl 100
