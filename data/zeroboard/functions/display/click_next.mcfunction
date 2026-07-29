schedule function zeroboard:display/rearm_clicks 1t replace
execute in minecraft:the_end as @e[type=minecraft:parrot,tag=zc_page_button,nbt={HurtTime:10s}] at @s run function zeroboard:display/replace_button

execute if score in_lobby flags matches 1 run scoreboard players add #page zc_ctrl 1
execute if score in_lobby flags matches 1 run function zeroboard:display/render
execute if score in_lobby flags matches 1 if score #page_has zc_ctrl matches 0 run scoreboard players remove #page zc_ctrl 1
execute if score in_lobby flags matches 1 if score #page_has zc_ctrl matches 0 run function zeroboard:display/render
execute if score in_lobby flags matches 1 run function zeroboard:menu/clean
execute if score in_lobby flags matches 1 run function zeroboard:menu/build
execute if score in_lobby flags matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~
