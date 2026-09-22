# runs as the vector marker, positioned and rotated as the sim marker (yaw, pitch 0).
# one block behind along the yaw, lifted to y + vy (#sim_tmp), then pulled back to
# unit length from the sim position: (sin yaw, vy, -cos yaw) normalised.
tp @s ^ ^ ^-1
data modify storage zeroboard:sim q set from entity @s Pos
execute store result storage zeroboard:sim q[1] double 0.0001 run scoreboard players get #sim_tmp zc_ctrl
data modify entity @s Pos set from storage zeroboard:sim q
execute facing entity @s feet run tp @s ^ ^ ^1
data modify storage zeroboard:sim v set from entity @s Pos
