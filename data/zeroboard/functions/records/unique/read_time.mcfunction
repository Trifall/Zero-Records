scoreboard players set #unique_minutes zc_ctrl 0
scoreboard players set #unique_seconds zc_ctrl 0
scoreboard players set #unique_hundredths zc_ctrl 0
scoreboard players set #unique_death_ticks zc_ctrl 0
scoreboard players set #unique_finish_ticks zc_ctrl 0
execute store result score #unique_minutes zc_ctrl run data get storage zeroboard:records work.unique_time.minutes
execute store result score #unique_seconds zc_ctrl run data get storage zeroboard:records work.unique_time.seconds
execute store result score #unique_death_ticks zc_ctrl run data get storage zeroboard:records work.unique_time.death_ticks
execute store result score #unique_finish_ticks zc_ctrl run data get storage zeroboard:records work.unique_time.finish_ticks
execute if data storage zeroboard:records work.unique_time{hundredths:"05"} run scoreboard players set #unique_hundredths zc_ctrl 5
execute if data storage zeroboard:records work.unique_time{hundredths:"10"} run scoreboard players set #unique_hundredths zc_ctrl 10
execute if data storage zeroboard:records work.unique_time{hundredths:"15"} run scoreboard players set #unique_hundredths zc_ctrl 15
execute if data storage zeroboard:records work.unique_time{hundredths:"20"} run scoreboard players set #unique_hundredths zc_ctrl 20
execute if data storage zeroboard:records work.unique_time{hundredths:"25"} run scoreboard players set #unique_hundredths zc_ctrl 25
execute if data storage zeroboard:records work.unique_time{hundredths:"30"} run scoreboard players set #unique_hundredths zc_ctrl 30
execute if data storage zeroboard:records work.unique_time{hundredths:"35"} run scoreboard players set #unique_hundredths zc_ctrl 35
execute if data storage zeroboard:records work.unique_time{hundredths:"40"} run scoreboard players set #unique_hundredths zc_ctrl 40
execute if data storage zeroboard:records work.unique_time{hundredths:"45"} run scoreboard players set #unique_hundredths zc_ctrl 45
execute if data storage zeroboard:records work.unique_time{hundredths:"50"} run scoreboard players set #unique_hundredths zc_ctrl 50
execute if data storage zeroboard:records work.unique_time{hundredths:"55"} run scoreboard players set #unique_hundredths zc_ctrl 55
execute if data storage zeroboard:records work.unique_time{hundredths:"60"} run scoreboard players set #unique_hundredths zc_ctrl 60
execute if data storage zeroboard:records work.unique_time{hundredths:"65"} run scoreboard players set #unique_hundredths zc_ctrl 65
execute if data storage zeroboard:records work.unique_time{hundredths:"70"} run scoreboard players set #unique_hundredths zc_ctrl 70
execute if data storage zeroboard:records work.unique_time{hundredths:"75"} run scoreboard players set #unique_hundredths zc_ctrl 75
execute if data storage zeroboard:records work.unique_time{hundredths:"80"} run scoreboard players set #unique_hundredths zc_ctrl 80
execute if data storage zeroboard:records work.unique_time{hundredths:"85"} run scoreboard players set #unique_hundredths zc_ctrl 85
execute if data storage zeroboard:records work.unique_time{hundredths:"90"} run scoreboard players set #unique_hundredths zc_ctrl 90
execute if data storage zeroboard:records work.unique_time{hundredths:"95"} run scoreboard players set #unique_hundredths zc_ctrl 95
scoreboard players operation #unique_time zc_ctrl = #unique_minutes zc_ctrl
scoreboard players operation #unique_time zc_ctrl *= #twelve_hundred zc_ctrl
scoreboard players operation #unique_part zc_ctrl = #unique_seconds zc_ctrl
scoreboard players operation #unique_part zc_ctrl *= #twenty zc_ctrl
scoreboard players operation #unique_time zc_ctrl += #unique_part zc_ctrl
scoreboard players operation #unique_part zc_ctrl = #unique_hundredths zc_ctrl
scoreboard players operation #unique_part zc_ctrl /= #five zc_ctrl
scoreboard players operation #unique_time zc_ctrl += #unique_part zc_ctrl
execute if score #unique_death_ticks zc_ctrl matches 1.. run scoreboard players operation #unique_time zc_ctrl = #unique_death_ticks zc_ctrl
execute if score #time_mode zc_ctrl matches 1 if score #unique_finish_ticks zc_ctrl matches 1.. run scoreboard players operation #unique_time zc_ctrl = #unique_finish_ticks zc_ctrl
