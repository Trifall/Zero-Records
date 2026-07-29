schedule function zeroboard:display/rearm_clicks 1t replace

execute if score in_lobby flags matches 1 if score #page zc_ctrl matches 1.. run scoreboard players remove #page zc_ctrl 1
execute if score in_lobby flags matches 1 run function zeroboard:display/render
execute if score in_lobby flags matches 1 run function zeroboard:menu/clean
execute if score in_lobby flags matches 1 run function zeroboard:menu/build
execute if score in_lobby flags matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~
