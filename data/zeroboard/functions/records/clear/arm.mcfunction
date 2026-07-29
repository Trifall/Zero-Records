scoreboard players set #clear_armed zc_ctrl 1
schedule function zeroboard:records/clear/disarm 100t replace
function zeroboard:menu/clean
function zeroboard:menu/build
playsound minecraft:ui.button.click master @s ~ ~ ~
title @s actionbar {"text":"Click Clear Records again within 5 seconds to confirm","color":"red"}
