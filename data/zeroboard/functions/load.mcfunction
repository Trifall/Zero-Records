# load / reload. objectives, the constants everything else does arithmetic against,
# range repair on the settings, and picks up any prediction that was mid flight when
# the world was saved.

scoreboard objectives add zc_ctrl dummy
scoreboard objectives add zc_menu dummy
scoreboard objectives add sqrt dummy
scoreboard objectives add c dummy
scoreboard players set 2 c 2
scoreboard objectives setdisplay sidebar
execute unless score #filter_init zc_ctrl matches 1 run function zeroboard:filter/defaults
scoreboard players set #five zc_ctrl 5
scoreboard players set #sixty zc_ctrl 60

function zeroboard:settings/load
function practice:gui/load

execute unless score #filter_height zc_ctrl matches -1 unless score #filter_height zc_ctrl matches 78..111 run scoreboard players set #filter_height zc_ctrl -1
execute unless score #filter_base zc_ctrl matches -1 unless score #filter_base zc_ctrl matches 1..10 run scoreboard players set #filter_base zc_ctrl -1
execute unless score #filter_plus zc_ctrl matches -1 unless score #filter_plus zc_ctrl matches 0..10 run scoreboard players set #filter_plus zc_ctrl -1
execute unless score #filter_spawn zc_ctrl matches 0..17 run scoreboard players set #filter_spawn zc_ctrl 2
execute unless score #filter_pickaxe zc_ctrl matches -1 unless score #filter_pickaxe zc_ctrl matches 0..6 run scoreboard players set #filter_pickaxe zc_ctrl -1
execute unless score #filter_location zc_ctrl matches -1..3 run scoreboard players set #filter_location zc_ctrl -1
execute unless score #filter_rotation zc_ctrl matches -1..1 run scoreboard players set #filter_rotation zc_ctrl -1
execute unless score #time_mode zc_ctrl matches 0..1 run scoreboard players set #time_mode zc_ctrl 0
execute unless score #unique_mode zc_ctrl matches 0..1 run scoreboard players set #unique_mode zc_ctrl 0
scoreboard players set #clear_armed zc_ctrl 0
scoreboard players set #unique_dirty zc_ctrl 1
scoreboard players set #two zc_ctrl 2
scoreboard players set #twenty zc_ctrl 20
scoreboard players set #twelve_hundred zc_ctrl 1200
scoreboard players set #c10 zc_ctrl 10
scoreboard players set #c100 zc_ctrl 100
scoreboard players set #absorption_buffer zc_ctrl 204800
scoreboard players set #c600 zc_ctrl 600
scoreboard players set #c573 zc_ctrl 573
scoreboard players set #c750 zc_ctrl 750
scoreboard players set #c8000 zc_ctrl 8000
scoreboard players set #c9100 zc_ctrl 9100
scoreboard players set #c10000 zc_ctrl 10000
scoreboard players set #c15000 zc_ctrl 15000
scoreboard players set #c36000 zc_ctrl 36000
scoreboard players set #c70000000 zc_ctrl 70000000
scoreboard players set #c200000000 zc_ctrl 200000000
scoreboard players set #c1000000 zc_ctrl 1000000
execute unless score #prediction_guard zc_ctrl matches 1..200 run scoreboard players set #prediction_guard zc_ctrl 1

# force_finish flushes 600 sim steps twice in one tick, ~300k commands, miles over the
# vanilla 65536. remember what it was first and only ever raise it, so a server that
# already set it higher is left alone. settings/restore_chain_length puts it back.
execute unless score #chain_len_saved zc_ctrl matches 1 store result score #chain_len_original zc_ctrl run gamerule maxCommandChainLength
execute unless score #chain_len_saved zc_ctrl matches 1 run scoreboard players set #chain_len_saved zc_ctrl 1
execute if score #chain_len_original zc_ctrl < #c1000000 zc_ctrl run gamerule maxCommandChainLength 1000000
scoreboard players set #dragon_track_active zc_ctrl 0
execute unless score #prediction_active zc_ctrl matches 0..1 run scoreboard players set #prediction_active zc_ctrl 0
execute if score #prediction_active zc_ctrl matches 0 in minecraft:the_end run function zeroboard:prediction/cancel
execute if score #prediction_active zc_ctrl matches 1 in minecraft:the_end run function zeroboard:prediction/recover
function zeroboard:records/personal_best/rebuild
scoreboard players set #dirty zc_ctrl 1
execute in minecraft:the_end run function zeroboard:lobby/build
