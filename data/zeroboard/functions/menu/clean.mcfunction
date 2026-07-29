clear @a #zeroboard:menu_items{zeroboard_menu:1b}
execute in minecraft:the_end positioned 139 65 0 as @e[type=minecraft:item,distance=..12] if data entity @s Item.tag.zeroboard_menu run kill @s
