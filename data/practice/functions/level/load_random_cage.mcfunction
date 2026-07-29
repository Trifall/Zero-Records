# weighted roll, not a flat 1-in-5. 286 buckets split by how often each
# cage actually turns up in real seeds:
#   3 = Open (4)        4 = Overhang (7)    5 = Buried 52 (7)   6 = Buried 53 (7)
#   7 = Buried 54 (93)  8 = Buried 55 (91)  9 = Buried 56 (49)  10 = Buried 57 (20)
#   remaining 8 buckets defer to load_random_high_cage for Buried 58-65
scoreboard players set mod rng 286
function practice:random/generate
execute if score r rng matches 0..3 run scoreboard players set spawn_act settings 3
execute if score r rng matches 4..10 run scoreboard players set spawn_act settings 4
execute if score r rng matches 11..17 run scoreboard players set spawn_act settings 5
execute if score r rng matches 18..24 run scoreboard players set spawn_act settings 6
execute if score r rng matches 25..117 run scoreboard players set spawn_act settings 7
execute if score r rng matches 118..208 run scoreboard players set spawn_act settings 8
execute if score r rng matches 209..257 run scoreboard players set spawn_act settings 9
execute if score r rng matches 258..277 run scoreboard players set spawn_act settings 10
execute if score r rng matches 278..285 run function practice:level/load_random_high_cage
