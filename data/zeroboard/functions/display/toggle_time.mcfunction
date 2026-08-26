scoreboard players add #time_mode zc_ctrl 1
scoreboard players operation #time_mode zc_ctrl %= #c2 zc_ctrl
scoreboard players set #unique_dirty zc_ctrl 1
function zeroboard:display/render
function zeroboard:menu/clean
function zeroboard:menu/build
playsound minecraft:ui.button.click master @s ~ ~ ~
execute if score #time_mode zc_ctrl matches 0 run title @s actionbar {"text":"Archive time: Death Time","color":"gold"}
execute if score #time_mode zc_ctrl matches 1 run title @s actionbar {"text":"Archive time: Finishing Time","color":"gold"}
