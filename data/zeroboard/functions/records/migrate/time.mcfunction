# death time in ticks from the old split fields. hundredths was saved as a string
# and only ever landed on multiples of 5.
scoreboard players set #mig_minutes zc_ctrl 0
scoreboard players set #mig_seconds zc_ctrl 0
scoreboard players set #mig_hun zc_ctrl 0
execute store result score #mig_minutes zc_ctrl run data get storage zeroboard:records work.rec.minutes
execute store result score #mig_seconds zc_ctrl run data get storage zeroboard:records work.rec.seconds
execute if data storage zeroboard:records work.rec{hundredths:"05"} run scoreboard players set #mig_hun zc_ctrl 5
execute if data storage zeroboard:records work.rec{hundredths:"10"} run scoreboard players set #mig_hun zc_ctrl 10
execute if data storage zeroboard:records work.rec{hundredths:"15"} run scoreboard players set #mig_hun zc_ctrl 15
execute if data storage zeroboard:records work.rec{hundredths:"20"} run scoreboard players set #mig_hun zc_ctrl 20
execute if data storage zeroboard:records work.rec{hundredths:"25"} run scoreboard players set #mig_hun zc_ctrl 25
execute if data storage zeroboard:records work.rec{hundredths:"30"} run scoreboard players set #mig_hun zc_ctrl 30
execute if data storage zeroboard:records work.rec{hundredths:"35"} run scoreboard players set #mig_hun zc_ctrl 35
execute if data storage zeroboard:records work.rec{hundredths:"40"} run scoreboard players set #mig_hun zc_ctrl 40
execute if data storage zeroboard:records work.rec{hundredths:"45"} run scoreboard players set #mig_hun zc_ctrl 45
execute if data storage zeroboard:records work.rec{hundredths:"50"} run scoreboard players set #mig_hun zc_ctrl 50
execute if data storage zeroboard:records work.rec{hundredths:"55"} run scoreboard players set #mig_hun zc_ctrl 55
execute if data storage zeroboard:records work.rec{hundredths:"60"} run scoreboard players set #mig_hun zc_ctrl 60
execute if data storage zeroboard:records work.rec{hundredths:"65"} run scoreboard players set #mig_hun zc_ctrl 65
execute if data storage zeroboard:records work.rec{hundredths:"70"} run scoreboard players set #mig_hun zc_ctrl 70
execute if data storage zeroboard:records work.rec{hundredths:"75"} run scoreboard players set #mig_hun zc_ctrl 75
execute if data storage zeroboard:records work.rec{hundredths:"80"} run scoreboard players set #mig_hun zc_ctrl 80
execute if data storage zeroboard:records work.rec{hundredths:"85"} run scoreboard players set #mig_hun zc_ctrl 85
execute if data storage zeroboard:records work.rec{hundredths:"90"} run scoreboard players set #mig_hun zc_ctrl 90
execute if data storage zeroboard:records work.rec{hundredths:"95"} run scoreboard players set #mig_hun zc_ctrl 95
scoreboard players operation #mig_death zc_ctrl = #mig_minutes zc_ctrl
scoreboard players operation #mig_death zc_ctrl *= #c1200 zc_ctrl
scoreboard players operation #mig_seconds zc_ctrl *= #c20 zc_ctrl
scoreboard players operation #mig_death zc_ctrl += #mig_seconds zc_ctrl
scoreboard players operation #mig_hun zc_ctrl /= #c5 zc_ctrl
scoreboard players operation #mig_death zc_ctrl += #mig_hun zc_ctrl
execute store result storage zeroboard:records work.rec.death_ticks int 1 run scoreboard players get #mig_death zc_ctrl
