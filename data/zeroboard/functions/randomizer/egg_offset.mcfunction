# r rng holds the egg's slot. slots 0 and 4 are already out of availableSlots, so the
# egg's own slot sits one or two places earlier than its number
execute if score r rng matches 1..3 run scoreboard players remove r rng 1
execute if score r rng matches 5.. run scoreboard players remove r rng 2
execute if score r rng matches 1.. run function practice:inventory/randomizer/rotate_array
