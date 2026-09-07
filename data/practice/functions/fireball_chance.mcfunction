# practice world has DragonKilled set, so EndDragonFight never rescans crystals.
# both modes reprice organic strafe entries only - a crystal broken during Holding
# starts Strafe directly and is On Crystal Break's to decide, so neither rolls it.
# vanilla reprices from its last internal count to the current crystal count,
# reduced keeps the map's older 3-of-13.
execute unless score #last_dragon_phase zc_ctrl matches -1..10 run scoreboard players set #last_dragon_phase zc_ctrl -1
execute unless score #prev_dragon_phase zc_ctrl matches -1..10 run scoreboard players set #prev_dragon_phase zc_ctrl -1
execute if score fireball_chance settings matches 0 if score #crystal_broke_this_tick zc_ctrl matches 0 if score phase stats matches 1 unless score #last_dragon_phase zc_ctrl matches 1 run function practice:fireball_chance/reduced_roll
execute if score fireball_chance settings matches 1 if score #crystal_broke_this_tick zc_ctrl matches 0 if score phase stats matches 1 unless score #last_dragon_phase zc_ctrl matches 1 run function practice:fireball_chance/vanilla_roll
# no_fly needs the tick before last too - a late crystal can count a tick late
scoreboard players operation #prev_dragon_phase zc_ctrl = #last_dragon_phase zc_ctrl
scoreboard players operation #last_dragon_phase zc_ctrl = phase stats
execute unless entity @e[type=minecraft:ender_dragon,limit=1] run scoreboard players set #last_dragon_phase zc_ctrl -1
execute unless entity @e[type=minecraft:ender_dragon,limit=1] run scoreboard players set #prev_dragon_phase zc_ctrl -1
