# offset of the vector marker from the sim position, 1/10000 block. runs as the
# vector marker, which the caller has just placed one block out along some heading.
execute store result score #sim_ux zc_ctrl run data get entity @s Pos[0] 10000
scoreboard players operation #sim_ux zc_ctrl -= #sim_x zc_ctrl
execute store result score #sim_uy zc_ctrl run data get entity @s Pos[1] 10000
scoreboard players operation #sim_uy zc_ctrl -= #sim_y zc_ctrl
execute store result score #sim_uz zc_ctrl run data get entity @s Pos[2] 10000
scoreboard players operation #sim_uz zc_ctrl -= #sim_z zc_ctrl
