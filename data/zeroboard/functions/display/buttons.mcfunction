execute as @e[tag=zc_page_button] at @s run tp @s ~ -128 ~
execute as @e[tag=zc_button_standby] at @s run tp @s ~ -128 ~
kill @e[tag=zc_page_button]
kill @e[tag=zc_button_standby]
execute positioned 139.5 66.15 0.5 run function zeroboard:display/spawn_buttons
tag @e[tag=zc_new_button] remove zc_new_button
execute as @e[type=minecraft:parrot,tag=zc_page_button] at @s run data modify entity @s Owner set from entity @p UUID
