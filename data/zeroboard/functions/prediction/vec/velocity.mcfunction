# runs as the vector marker, positioned at the sim marker. q holds position + velocity;
# pulled back to unit length from the sim position it is the velocity direction.
data modify entity @s Pos set from storage zeroboard:sim q
execute facing entity @s feet run tp @s ^ ^ ^1
data modify storage zeroboard:sim v set from entity @s Pos
