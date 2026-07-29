scoreboard players set #pb_ticks zc_ctrl 0
scoreboard players set #new_pb zc_ctrl 0
data modify storage zeroboard:records work.pb_scan set value []
data modify storage zeroboard:records work.pb_scan set from storage zeroboard:records records
execute if data storage zeroboard:records work.pb_scan[0] run function zeroboard:records/personal_best/scan
data remove storage zeroboard:records work.pb_scan
function zeroboard:records/personal_best/format
