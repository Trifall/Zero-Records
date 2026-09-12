# the base packs keep loadouts in different storages: 1.2.2 in zero_practice_loadouts,
# 1.2.1 and MCSR in practice. clear both outputs first so a missing loadout can never
# hand out the previous attempt's inventory
data remove storage zero_practice_loadouts:loadouts randomizer.inventory
data remove storage practice:loadouts randomizer.inventory
execute if data storage zero_practice_loadouts:loadouts selected run function zeroboard:randomizer/zero_practice_loadouts
execute unless data storage zero_practice_loadouts:loadouts selected if data storage practice:loadouts selected run function zeroboard:randomizer/practice_loadouts
