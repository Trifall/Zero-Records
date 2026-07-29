# which approach the run actually ends up using. rotation covers cw, ccw, random,
# custom and the fast / slow variants, so the direction gets picked here and the
# lookup table is walked down to the row practice:spawn_dragon reads.

scoreboard players operation rotation_act settings = rotation settings
execute if score rotation settings matches 2 run scoreboard players set rotation_act settings 0
execute if score rotation settings matches 2 if predicate practice:rand_50 run scoreboard players set rotation_act settings 1
execute if score rotation settings matches 4 run scoreboard players set rotation_act settings 0
execute if score rotation settings matches 5 run scoreboard players set rotation_act settings 1
execute if score rotation settings matches 6 run scoreboard players set rotation_act settings 0
execute if score rotation settings matches 7 run scoreboard players set rotation_act settings 1

execute if score location_act settings matches 0 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup values[0]
execute if score location_act settings matches 1 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup values[1]
execute if score direction_act settings matches 0 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[0]
execute if score direction_act settings matches 1 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[1]
execute if score rotation settings matches 0..2 if score rotation_act settings matches 0 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[0]
execute if score rotation settings matches 0..2 if score rotation_act settings matches 1 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[1]
execute if score rotation settings matches 4 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[2]
execute if score rotation settings matches 5 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[3]
execute if score rotation settings matches 6 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[4]
execute if score rotation settings matches 7 run data modify storage practice:rotation_lookup temp set from storage practice:rotation_lookup temp[5]
