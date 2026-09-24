# the open tiles are Mescht's island, and their air takes down whatever spawn was in
scoreboard players set #spawn natural_end 0
function natural_end:apply_terrain
scoreboard players set #natural_on natural_end 0
