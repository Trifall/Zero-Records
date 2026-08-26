# cache every selectable approach node at the fly height without touching terrain.
# diagonal nodes use terrain+15, straight nodes +5. fixed Always Fly caches Y95
# (barriers Y79 diagonal, Y89 straight); Custom shifts both to hit custom_diag_fly.
execute if score fly_chance settings matches 3 in minecraft:the_end run setblock 28 79 -29 minecraft:barrier
execute if score fly_chance settings matches 3 in minecraft:the_end run setblock -29 79 28 minecraft:barrier
execute if score fly_chance settings matches 3 in minecraft:the_end run setblock 20 89 0 minecraft:barrier
execute if score fly_chance settings matches 3 in minecraft:the_end run setblock -20 89 0 minecraft:barrier
execute if score fly_chance settings matches 4 run function practice:level/always_fly_custom
