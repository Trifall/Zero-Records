data modify storage zeroboard:records work.rec set from storage zeroboard:records work.migrate[0]
data remove storage zeroboard:records work.migrate[0]
scoreboard players set #mig_death zc_ctrl 0
execute store result score #mig_death zc_ctrl run data get storage zeroboard:records work.rec.death_ticks
execute if score #mig_death zc_ctrl matches ..0 run function zeroboard:records/migrate/time
data remove storage zeroboard:records work.rec.minutes
data remove storage zeroboard:records work.rec.seconds
data remove storage zeroboard:records work.rec.hundredths
scoreboard players set #mig_approach zc_ctrl -1
execute if data storage zeroboard:records work.rec{approach:"Front Diagonal CW"} run scoreboard players set #mig_approach zc_ctrl 0
execute if data storage zeroboard:records work.rec{approach:"Back Diagonal CW"} run scoreboard players set #mig_approach zc_ctrl 1
execute if data storage zeroboard:records work.rec{approach:"Front Straight CW"} run scoreboard players set #mig_approach zc_ctrl 2
execute if data storage zeroboard:records work.rec{approach:"Back Straight CW"} run scoreboard players set #mig_approach zc_ctrl 3
execute if data storage zeroboard:records work.rec{approach:"Front Diagonal CCW"} run scoreboard players set #mig_approach zc_ctrl 4
execute if data storage zeroboard:records work.rec{approach:"Back Diagonal CCW"} run scoreboard players set #mig_approach zc_ctrl 5
execute if data storage zeroboard:records work.rec{approach:"Front Straight CCW"} run scoreboard players set #mig_approach zc_ctrl 6
execute if data storage zeroboard:records work.rec{approach:"Back Straight CCW"} run scoreboard players set #mig_approach zc_ctrl 7
execute store result storage zeroboard:records work.rec.approach_code int 1 run scoreboard players get #mig_approach zc_ctrl
data modify storage zeroboard:records work.migrated append from storage zeroboard:records work.rec
execute if data storage zeroboard:records work.migrate[0] run function zeroboard:records/migrate/loop
