setblock 139 65 0 minecraft:air
setblock 139 66 0 minecraft:air
setblock 140 65 0 minecraft:air
setblock 140 66 0 minecraft:air
setblock 140 63 0 minecraft:air
setblock 144 65 4 minecraft:air
setblock 147 65 0 minecraft:air
setblock 147 63 0 minecraft:air
fill 148 65 -5 148 73 5 minecraft:air
fill 142 64 -5 167 65 5 minecraft:air
setblock 166 63 0 minecraft:air
fill 139 64 -5 148 64 5 minecraft:air
fill 139 64 -3 139 64 3 minecraft:end_stone_bricks
setblock 139 64 -4 minecraft:purpur_stairs[facing=west,half=bottom,shape=outer_left,waterlogged=false]
setblock 139 64 4 minecraft:purpur_stairs[facing=west,half=bottom,shape=outer_right,waterlogged=false]
setblock 140 64 -3 minecraft:purpur_stairs[facing=south,half=bottom,shape=outer_right,waterlogged=false]
fill 140 64 -2 140 64 2 minecraft:purpur_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
setblock 140 64 3 minecraft:purpur_stairs[facing=north,half=bottom,shape=outer_left,waterlogged=false]
setblock 139 64 -3 minecraft:purpur_stairs[facing=south,half=bottom,shape=inner_right,waterlogged=false]
setblock 139 64 3 minecraft:purpur_stairs[facing=west,half=bottom,shape=inner_right,waterlogged=false]
setblock 139 63 0 minecraft:barrel[facing=down] replace
function zeroboard:display/entities
function zeroboard:menu/build
scoreboard players set #dirty zc_ctrl 1
execute if data storage zeroboard:compat {mcsr:1b} run function zeroboard:lobby/hub_sign
