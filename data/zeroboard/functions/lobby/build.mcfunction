function zeroboard:lobby/edge_space
execute if score #edge_space zc_ctrl matches 1 run function zeroboard:lobby/edge
setblock 139 63 0 minecraft:barrel[facing=down] replace
function zeroboard:display/entities
function zeroboard:menu/build
scoreboard players set #dirty zc_ctrl 1
execute if data storage zeroboard:compat {mcsr:1b} run function zeroboard:lobby/hub_sign
