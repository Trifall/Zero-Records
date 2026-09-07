scoreboard players operation crystals_last stats = crystals stats
scoreboard players set crystals stats 0
execute as @e[type=minecraft:end_crystal] run scoreboard players add crystals stats 1
scoreboard players set #crystal_broke_this_tick zc_ctrl 0

execute if score crystals stats < crystals_last stats run tellraw @a {"text":"Crystal Destroyed","color":"red"}
execute if score crystals stats < crystals_last stats run scoreboard players set #crystal_broke_this_tick zc_ctrl 1
# EndDragonFight rescans the spikes before its callback, so its internal count
# now matches the remaining crystals
execute if score crystals stats < crystals_last stats run scoreboard players operation #dragonfight_n zc_ctrl = crystals stats
# No Fly restores the pre-break phase - phase 0 is Holding (flying), so forcing 0
# would not mean no fly. see crystal_break/no_fly
execute if score crystals stats < crystals_last stats if score crystal_break settings matches 0 run function practice:crystal_break/no_fly
# Always Fly: leave the node the dragon is circling for the next one along the ring.
# a phase write alone cannot do that - Holding rebuilds its path from the closest
# cached node, and up at Y115+ that is the Y126 side selector at (+-40,0), so the
# first path just replays. crystal_break/always_fly dips the dragon for the one
# entity tick that builds the path. scheduled into the level tick so this tick's
# tracker sample stays real; main undoes the dip next tick ahead of the tracker.
# a perch keeps vanilla's own takeoff
execute if score crystals stats < crystals_last stats if score crystal_break settings matches 1 if score phase stats matches 5..7 in minecraft:the_end run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 4b
execute if score crystals stats < crystals_last stats if score crystal_break settings matches 1 if score phase stats matches 5..7 run scoreboard players set phase stats 4
execute if score crystals stats < crystals_last stats if score crystal_break settings matches 1 if score phase stats matches 5..7 run tellraw @a[tag=debug] {"text":"[DEBUG] Crystal break forced a takeoff","color":"dark_purple"}
execute if score crystals stats < crystals_last stats if score crystal_break settings matches 1 unless score phase stats matches 5..7 unless score phase stats matches 9 run schedule function practice:crystal_break/always_fly 1t replace
execute if score crystals stats < crystals_last stats if score crystal_break settings matches 1 unless score phase stats matches 5..7 unless score phase stats matches 9 run tellraw @a[tag=debug] {"text":"[DEBUG] Crystal break queued the next node","color":"dark_purple"}
execute if score crystals stats < crystals_last stats if score crystal_break settings matches 2 run tellraw @a[tag=debug] {"text":"[DEBUG] Crystal break left Vanilla behavior unchanged","color":"dark_purple"}

# damage from crystal
scoreboard players reset crystal_damage health
execute unless score flying_to_fountain flags matches 1 as @e[type=minecraft:armor_stand,tag=healing] at @s unless entity @e[type=minecraft:end_crystal,distance=..3] run scoreboard players set crystal_damage health 1

kill @e[type=armor_stand,tag=healing]
execute as @e[type=minecraft:ender_dragon] at @s run tag @e[type=minecraft:end_crystal,limit=1,distance=..41,sort=nearest] add healing
execute as @e[type=end_crystal,tag=healing] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Tags:["healing"],Marker:1b,Invisible:1b}
#execute as @e[type=end_crystal,tag=healing] at @s run particle minecraft:flame ~ ~ ~ 1 1 1 0 10 force
tag @e[type=end_crystal] remove healing
