execute if score rotation settings matches 4 if score location_act settings matches 0 if score direction_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Front Diagonal Fast CW"
execute if score rotation settings matches 4 if score location_act settings matches 1 if score direction_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Back Diagonal Fast CW"
execute if score rotation settings matches 4 if score location_act settings matches 0 if score direction_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Front Straight Fast CW"
execute if score rotation settings matches 4 if score location_act settings matches 1 if score direction_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Back Straight Fast CW"
execute if score rotation settings matches 5 if score location_act settings matches 0 if score direction_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Front Diagonal Fast CCW"
execute if score rotation settings matches 5 if score location_act settings matches 1 if score direction_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Back Diagonal Fast CCW"
execute if score rotation settings matches 5 if score location_act settings matches 0 if score direction_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Front Straight Fast CCW"
execute if score rotation settings matches 5 if score location_act settings matches 1 if score direction_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Back Straight Fast CCW"

execute if score rotation settings matches 6 if score location_act settings matches 0 if score direction_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Front Diagonal Slow CW"
execute if score rotation settings matches 6 if score location_act settings matches 1 if score direction_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Back Diagonal Slow CW"
execute if score rotation settings matches 6 if score location_act settings matches 0 if score direction_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Front Straight Slow CW"
execute if score rotation settings matches 6 if score location_act settings matches 1 if score direction_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Back Straight Slow CW"
execute if score rotation settings matches 7 if score location_act settings matches 0 if score direction_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Front Diagonal Slow CCW"
execute if score rotation settings matches 7 if score location_act settings matches 1 if score direction_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Back Diagonal Slow CCW"
execute if score rotation settings matches 7 if score location_act settings matches 0 if score direction_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Front Straight Slow CCW"
execute if score rotation settings matches 7 if score location_act settings matches 1 if score direction_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Back Straight Slow CCW"

# diagonal: the side of the band the spawn angle fell in, whatever the setting was
execute if score speed_act settings matches 0 if score rotation_act settings matches 0 if score location_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Front Diagonal Fast CW"
execute if score speed_act settings matches 0 if score rotation_act settings matches 0 if score location_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Back Diagonal Fast CW"
execute if score speed_act settings matches 0 if score rotation_act settings matches 1 if score location_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Front Diagonal Fast CCW"
execute if score speed_act settings matches 0 if score rotation_act settings matches 1 if score location_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Back Diagonal Fast CCW"
execute if score speed_act settings matches 1 if score rotation_act settings matches 0 if score location_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Front Diagonal Slow CW"
execute if score speed_act settings matches 1 if score rotation_act settings matches 0 if score location_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Back Diagonal Slow CW"
execute if score speed_act settings matches 1 if score rotation_act settings matches 1 if score location_act settings matches 0 run data modify storage zeroboard:records work.kill_type set value "Front Diagonal Slow CCW"
execute if score speed_act settings matches 1 if score rotation_act settings matches 1 if score location_act settings matches 1 run data modify storage zeroboard:records work.kill_type set value "Back Diagonal Slow CCW"

scoreboard players operation #angle_whole zc_ctrl = angle_act settings
scoreboard players operation #angle_whole zc_ctrl /= #c10 zc_ctrl
scoreboard players operation #angle_tenth zc_ctrl = angle_act settings
scoreboard players operation #angle_tenth zc_ctrl %= #c10 zc_ctrl
data modify storage zeroboard:records work.kill_angle set value '[{"text":" ("},{"score":{"name":"#angle_whole","objective":"zc_ctrl"}},{"text":"."},{"score":{"name":"#angle_tenth","objective":"zc_ctrl"}},{"text":")"}]'
