# angle_act uses the practice:rotation_lookup bands.
# speed_act: 0 fast, 1 slow, -1 for straight approaches.
scoreboard players set speed_act settings -1

execute if score location_act settings matches 0 if score direction_act settings matches 0 if score angle_act settings matches 3387..3599 run scoreboard players set speed_act settings 0
execute if score location_act settings matches 0 if score direction_act settings matches 0 if score angle_act settings matches 0..1094 run scoreboard players set speed_act settings 0
execute if score location_act settings matches 0 if score direction_act settings matches 0 if score angle_act settings matches 1095..3386 run scoreboard players set speed_act settings 1

execute if score location_act settings matches 1 if score direction_act settings matches 0 if score angle_act settings matches 1606..2913 run scoreboard players set speed_act settings 0
execute if score location_act settings matches 1 if score direction_act settings matches 0 if score angle_act settings matches 2914..3599 run scoreboard players set speed_act settings 1
execute if score location_act settings matches 1 if score direction_act settings matches 0 if score angle_act settings matches 0..1605 run scoreboard players set speed_act settings 1
