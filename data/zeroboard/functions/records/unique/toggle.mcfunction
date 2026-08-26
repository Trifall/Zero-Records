scoreboard players add #unique_mode zc_ctrl 1
scoreboard players operation #unique_mode zc_ctrl %= #c2 zc_ctrl
scoreboard players set #unique_dirty zc_ctrl 1
scoreboard players set #page zc_ctrl 0
function zeroboard:display/render
function zeroboard:menu/clean
function zeroboard:menu/build
playsound minecraft:ui.button.click master @s ~ ~ ~
execute if score #unique_mode zc_ctrl matches 0 run title @s actionbar {"text":"Unique zeros: Off","color":"dark_aqua"}
execute if score #unique_mode zc_ctrl matches 1 run title @s actionbar {"text":"Unique zeros: On","color":"green"}
