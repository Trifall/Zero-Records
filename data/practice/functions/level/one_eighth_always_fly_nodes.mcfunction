# 1/8 is the straight approach - force_straight opens the inner-ring nodes at
# (+-20,0), which cache at heightmap+5 with a Y73 floor. terrain would have to
# reach o68 to lift one off it, which real seeds basically never do, so the node
# sits at Y73 every run and this just moves it to the fly height. the (+-40,0)
# middle node stays the base-pack side selector at Y126.
#
# observed fly = barrier + 11. Y92 -> 81, Y97 -> 86, Custom reads custom_1_8_fly.
scoreboard players set #oe_fly zc_ctrl 92
execute if score one_eighth_fly settings matches 2 run scoreboard players set #oe_fly zc_ctrl 97
execute if score one_eighth_fly settings matches 3 run scoreboard players operation #oe_fly zc_ctrl = value custom_1_8_fly
scoreboard players operation #pb_y zc_ctrl = #oe_fly zc_ctrl
scoreboard players remove #pb_y zc_ctrl 11

scoreboard players set #pb_z zc_ctrl 0
execute if score location_act settings matches 0 run scoreboard players set #pb_x zc_ctrl 20
execute if score location_act settings matches 1 run scoreboard players set #pb_x zc_ctrl -20
function practice:level/place_barrier

# Always Fly probes this column at Y89 (node 95); clear it so the 1/8 barrier wins
execute if score location_act settings matches 0 in minecraft:the_end run fill 20 89 0 20 89 0 minecraft:air replace minecraft:barrier
execute if score location_act settings matches 1 in minecraft:the_end run fill -20 89 0 -20 89 0 minecraft:air replace minecraft:barrier

scoreboard players set #one_eighth_saved zc_ctrl 1
