# set up data
data modify storage practice:loadouts randomizer.stack set from storage practice:loadouts selected.inventory
data modify storage practice:loadouts randomizer.availableSlots set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26]

# top left (0) and top mid (4) stay put like the hotbar: the cursor opens on one of them,
# 0 with the recipe book open and 4 with it closed. straight to the output and out of the
# slot pool. 4 sits at index 3 once 0 is gone
execute if data storage practice:loadouts randomizer.stack[{Slot:0b}] run data modify storage practice:loadouts randomizer.inventory append from storage practice:loadouts randomizer.stack[{Slot:0b}]
data remove storage practice:loadouts randomizer.stack[{Slot:0b}]
data remove storage practice:loadouts randomizer.availableSlots[0]
execute if data storage practice:loadouts randomizer.stack[{Slot:4b}] run data modify storage practice:loadouts randomizer.inventory append from storage practice:loadouts randomizer.stack[{Slot:4b}]
data remove storage practice:loadouts randomizer.stack[{Slot:4b}]
data remove storage practice:loadouts randomizer.availableSlots[3]

# exclude egg from randomizer. the base egg function rotates the pool by the raw slot
# number, which no longer lines up with the two gaps, so egg_offset does the rotation
execute if data storage practice:loadouts randomizer.stack[{id:"minecraft:egg"}] store result score r rng run data get storage practice:loadouts randomizer.stack[{id:"minecraft:egg"}].Slot
execute if data storage practice:loadouts randomizer.stack[{id:"minecraft:egg"}] run function zeroboard:randomizer/egg_offset
execute if data storage practice:loadouts randomizer.stack[{id:"minecraft:egg"}] run data remove storage practice:loadouts randomizer.availableSlots[0]
execute if data storage practice:loadouts randomizer.stack[{id:"minecraft:egg"}] run data modify storage practice:loadouts randomizer.inventory append from storage practice:loadouts randomizer.stack[{id:"minecraft:egg"}]
data remove storage practice:loadouts randomizer.stack[{id:"minecraft:egg"}]

function practice:inventory/randomizer/loop_slots
