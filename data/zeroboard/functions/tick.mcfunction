# advance the flight simulation
execute in minecraft:the_end if score #prediction_active zc_ctrl matches 1 run function zeroboard:prediction/tick

# rebuild the leaderboard area if a player is nearby and something is missing
execute in minecraft:the_end if entity @a[x=120,y=50,z=-20,dx=40,dy=40,dz=40] unless block 139 64 0 minecraft:end_stone_bricks run function zeroboard:lobby/build
execute in minecraft:the_end if entity @a[x=120,y=50,z=-20,dx=40,dy=40,dz=40] unless block 140 64 0 minecraft:purpur_stairs run function zeroboard:lobby/build
execute in minecraft:the_end if entity @a[x=120,y=50,z=-20,dx=40,dy=40,dz=40] unless entity @e[tag=zc_title,x=138,y=60,z=-1,dx=3,dy=14,dz=3] run function zeroboard:display/entities
execute in minecraft:the_end if entity @a[x=120,y=50,z=-20,dx=40,dy=40,dz=40] unless entity @e[tag=zc_pb,x=138,y=60,z=-1,dx=3,dy=14,dz=3] run function zeroboard:display/entities
execute in minecraft:the_end if entity @a[x=120,y=50,z=-20,dx=40,dy=40,dz=40] unless data block 139 65 0 {CustomName:'{"color":"dark_purple","text":"Zero Cycle Filters"}'} run function zeroboard:menu/build

# repaint the board when a filter changed, and handle menu clicks
execute if score in_lobby flags matches 1 if score #dirty zc_ctrl matches 1 in minecraft:the_end run function zeroboard:filter/apply
execute if score in_lobby flags matches 1 as @a[scores={zc_menu=1..}] at @s run function zeroboard:menu/click

# menu items are display-only, so sweep up any that got dropped
execute in minecraft:the_end positioned 139 65 0 as @e[type=minecraft:item,distance=..12] if data entity @s Item.tag.zeroboard_menu run kill @s
