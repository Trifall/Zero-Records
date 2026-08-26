execute unless block 139 64 0 minecraft:end_stone_bricks run function zeroboard:lobby/build
execute unless block 140 64 0 minecraft:purpur_stairs run function zeroboard:lobby/build
execute unless entity @e[tag=zc_title,x=138,y=60,z=-1,dx=3,dy=14,dz=3] run function zeroboard:display/entities
execute unless entity @e[tag=zc_pb,x=138,y=60,z=-1,dx=3,dy=14,dz=3] run function zeroboard:display/entities
execute unless data block 139 65 0 {CustomName:'{"color":"dark_purple","text":"Zero Cycle Filters"}'} run function zeroboard:menu/build
