execute if data storage practice:gui tower_pages.center[{tag:{index:0b},enabled:1b}] run data modify storage practice:gui tower_pages.left[{tag:{index:0b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:0b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:0b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:1b},enabled:1b}] run data modify storage practice:gui tower_pages.left[{tag:{index:1b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:1b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:1b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:2b},enabled:1b}] run data modify storage practice:gui tower_pages.left[{tag:{index:2b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:2b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:2b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:3b},enabled:1b}] run data modify storage practice:gui tower_pages.left[{tag:{index:3b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:3b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:3b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:4b},enabled:1b}] run data modify storage practice:gui tower_pages.left[{tag:{index:4b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:4b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:4b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:5b},enabled:1b}] run data modify storage practice:gui tower_pages.left[{tag:{index:5b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:5b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:5b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:6b},enabled:1b}] run data modify storage practice:gui tower_pages.left[{tag:{index:6b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:6b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:6b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:7b},enabled:1b}] run data modify storage practice:gui tower_pages.left[{tag:{index:7b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:7b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:7b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:8b},enabled:1b}] run data modify storage practice:gui tower_pages.left[{tag:{index:8b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:8b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:8b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:9b},enabled:1b}] run data modify storage practice:gui tower_pages.left[{tag:{index:9b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.center[{tag:{index:9b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:9b}}].enabled set value 0b

execute if data storage practice:gui tower_pages.left[{tag:{index:0b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:0b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.left[{tag:{index:1b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:1b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.left[{tag:{index:2b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:2b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.left[{tag:{index:3b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:3b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.left[{tag:{index:4b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:4b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.left[{tag:{index:5b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:5b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.left[{tag:{index:6b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:6b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.left[{tag:{index:7b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:7b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.left[{tag:{index:8b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:8b}}].enabled set value 0b
execute if data storage practice:gui tower_pages.left[{tag:{index:9b},enabled:1b}] run data modify storage practice:gui tower_pages.right[{tag:{index:9b}}].enabled set value 0b

data remove storage practice:gui tower_pages.left[{enabled:0b}].tag.Enchantments
data remove storage practice:gui tower_pages.center[{enabled:0b}].tag.Enchantments
data remove storage practice:gui tower_pages.right[{enabled:0b}].tag.Enchantments
data modify storage practice:gui tower_pages.left[{enabled:0b}].tag.display.Lore set value ['{"text":"Disabled","color":"red","italic":false}']
data modify storage practice:gui tower_pages.center[{enabled:0b}].tag.display.Lore set value ['{"text":"Disabled","color":"red","italic":false}']
data modify storage practice:gui tower_pages.right[{enabled:0b}].tag.display.Lore set value ['{"text":"Disabled","color":"red","italic":false}']
scoreboard players set tower_unique_v1 gui 1
function practice:gui/pages/home/load_current_page
