scoreboard players operation crystals_last stats = crystals stats
scoreboard players set crystals stats 0
execute as @e[type=minecraft:end_crystal] run scoreboard players add crystals stats 1

execute if score crystals stats < crystals_last stats run function practice:crystal_break/on_break

scoreboard players reset crystal_damage health
execute unless score flying_to_fountain flags matches 1 as @e[type=minecraft:armor_stand,tag=healing] at @s unless entity @e[type=minecraft:end_crystal,distance=..3] run scoreboard players set crystal_damage health 1

kill @e[type=armor_stand,tag=healing]
execute as @e[type=minecraft:ender_dragon] at @s run tag @e[type=minecraft:end_crystal,limit=1,distance=..41,sort=nearest] add healing
execute as @e[type=end_crystal,tag=healing] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Tags:["healing"],Marker:1b,Invisible:1b}
tag @e[type=end_crystal] remove healing
