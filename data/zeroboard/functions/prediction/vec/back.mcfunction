# runs as the vector marker, positioned and rotated as the sim marker.
# one block behind along the yaw: the direction the dragon thrusts in.
tp @s ^ ^ ^-1
data modify storage zeroboard:sim v set from entity @s Pos
