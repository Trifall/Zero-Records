# Vanilla Holding uses two ORed strafe rolls after its landing roll:
#   1 / (floor(distance^2 / 512) + 2)
#   1 / (crystalsAlive + 2)
#
# Including the preceding non-landing roll gives:
#   P(strafe) = (A + N + 1) / (A * (N + 3))
# where A=floor(distance^2/512)+2 and N=crystalsAlive.
#
# If M is EndDragonFight's last internal crystal count and N is the crystals
# now present, retain an organic strafe with probability:
#   (A + N + 1)(M + 3) / ((N + 3)(A + M + 1))

scoreboard players operation #fireball_n rng = crystals stats
execute if score #fireball_n rng matches ..-1 run scoreboard players set #fireball_n rng 0
scoreboard players operation #fireball_current_n rng = #dragonfight_n zc_ctrl
execute if score #fireball_current_n rng matches ..-1 run scoreboard players set #fireball_current_n rng 0

# Vanilla measures from the motion-blocking heightmap position at the fountain.
# The fountain's center-column heightmap position is (0,65,0).
scoreboard players set #fireball_a rng 9
execute in minecraft:the_end positioned 0 65 0 if entity @a[gamemode=survival,sort=nearest,limit=1,distance=..59.8665] run scoreboard players set #fireball_a rng 8
execute in minecraft:the_end positioned 0 65 0 if entity @a[gamemode=survival,sort=nearest,limit=1,distance=..55.4256] run scoreboard players set #fireball_a rng 7
execute in minecraft:the_end positioned 0 65 0 if entity @a[gamemode=survival,sort=nearest,limit=1,distance=..50.5964] run scoreboard players set #fireball_a rng 6
execute in minecraft:the_end positioned 0 65 0 if entity @a[gamemode=survival,sort=nearest,limit=1,distance=..45.2548] run scoreboard players set #fireball_a rng 5
execute in minecraft:the_end positioned 0 65 0 if entity @a[gamemode=survival,sort=nearest,limit=1,distance=..39.1918] run scoreboard players set #fireball_a rng 4
execute in minecraft:the_end positioned 0 65 0 if entity @a[gamemode=survival,sort=nearest,limit=1,distance=..31.9999] run scoreboard players set #fireball_a rng 3
execute in minecraft:the_end positioned 0 65 0 if entity @a[gamemode=survival,sort=nearest,limit=1,distance=..22.6274] run scoreboard players set #fireball_a rng 2

# numerator = (A + N + 1)(M + 3)
scoreboard players operation #fireball_num rng = #fireball_a rng
scoreboard players operation #fireball_num rng += #fireball_n rng
scoreboard players add #fireball_num rng 1
scoreboard players operation #fireball_current_factor rng = #fireball_current_n rng
scoreboard players add #fireball_current_factor rng 3
scoreboard players operation #fireball_num rng *= #fireball_current_factor rng

# denominator = (N + 3)(A + M + 1)
scoreboard players operation #fireball_den rng = #fireball_n rng
scoreboard players add #fireball_den rng 3
scoreboard players operation #fireball_ap1 rng = #fireball_a rng
scoreboard players operation #fireball_ap1 rng += #fireball_current_n rng
scoreboard players add #fireball_ap1 rng 1
scoreboard players operation #fireball_den rng *= #fireball_ap1 rng

scoreboard players operation mod rng = #fireball_den rng
function practice:random/generate
execute if score r rng >= #fireball_num rng in minecraft:the_end run data modify entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase set value 0b
execute if score r rng >= #fireball_num rng run scoreboard players set phase stats 0
