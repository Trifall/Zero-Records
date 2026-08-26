# records written before approach_code and death_ticks existed. death_ticks is
# derived from the old minutes / seconds / hundredths fields, which then go.
data modify storage zeroboard:records work.migrate set from storage zeroboard:records records
data modify storage zeroboard:records work.migrated set value []
execute if data storage zeroboard:records work.migrate[0] run function zeroboard:records/migrate/loop
data modify storage zeroboard:records records set from storage zeroboard:records work.migrated
data remove storage zeroboard:records work.migrate
data remove storage zeroboard:records work.migrated
