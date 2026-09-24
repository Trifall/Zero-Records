scoreboard objectives add natural_end dummy
scoreboard players operation #spawn natural_end = spawn_act settings
function natural_end:apply_terrain
scoreboard players set #natural_on natural_end 1
