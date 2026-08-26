function zeroboard:display/spawn_button
execute as @e[type=minecraft:parrot,tag=zc_new_button,distance=..0.1,sort=nearest,limit=1] at @s run data modify entity @s Owner set from entity @p UUID
tag @e[type=minecraft:parrot,tag=zc_new_button,distance=..0.1,sort=nearest,limit=1] remove zc_new_button
tp @s ~ -128 ~
kill @s
