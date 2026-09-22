# runs as the vector marker, positioned at the sim marker facing the node.
# lands one block toward the node carrying the facing rotation, so v.Rotation[0] is
# the target yaw and v.Pos - sim position is the unit vector.
tp @s ^ ^ ^1 ~ ~
data modify storage zeroboard:sim v set from entity @s
