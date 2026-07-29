execute in minecraft:the_end run function zeroboard:prediction/cancel
scoreboard players set #clear_armed zc_ctrl 0
schedule clear zeroboard:records/clear/disarm
data modify storage zeroboard:records records set value []
data modify storage zeroboard:records current set value {}
scoreboard players set #next_id zc_ctrl 0
scoreboard players set #active_record zc_ctrl -1
scoreboard players set #record_id zc_ctrl -1
scoreboard players set #finish_locked zc_ctrl 0
scoreboard players set #pb_ticks zc_ctrl 0
scoreboard players set #new_pb zc_ctrl 0
scoreboard players set #unique_dirty zc_ctrl 1
function zeroboard:filter/apply
function zeroboard:menu/clean
function zeroboard:menu/build
playsound minecraft:ui.button.click master @s ~ ~ ~
tellraw @s {"text":"All Zero Cycle Archive records were cleared.","color":"red"}
