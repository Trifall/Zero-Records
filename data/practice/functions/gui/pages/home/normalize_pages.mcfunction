# one time: a tower may only be enabled on one page. center wins, then left over right
data modify storage practice:gui locks set value []
data modify storage practice:gui locks append from storage practice:gui tower_pages.center[{enabled:1b}]
data modify storage practice:gui mark set from storage practice:gui tower_pages.left
function practice:gui/pages/home/mark_locked
function practice:gui/pages/home/disable_locked
data modify storage practice:gui tower_pages.left set from storage practice:gui mark
data modify storage practice:gui mark set from storage practice:gui tower_pages.right
function practice:gui/pages/home/mark_locked
function practice:gui/pages/home/disable_locked
data modify storage practice:gui tower_pages.right set from storage practice:gui mark

data modify storage practice:gui locks set value []
data modify storage practice:gui locks append from storage practice:gui tower_pages.left[{enabled:1b}]
data modify storage practice:gui mark set from storage practice:gui tower_pages.right
function practice:gui/pages/home/mark_locked
function practice:gui/pages/home/disable_locked
data modify storage practice:gui tower_pages.right set from storage practice:gui mark

data remove storage practice:gui tower_pages.left[{enabled:0b}].tag.Enchantments
data remove storage practice:gui tower_pages.center[{enabled:0b}].tag.Enchantments
data remove storage practice:gui tower_pages.right[{enabled:0b}].tag.Enchantments
execute if data storage practice:gui tower_pages.left[{enabled:0b}] run data modify storage practice:gui tower_pages.left[{enabled:0b}].tag.display.Lore set value ['{"text":"Disabled","color":"red","italic":false}']
execute if data storage practice:gui tower_pages.center[{enabled:0b}] run data modify storage practice:gui tower_pages.center[{enabled:0b}].tag.display.Lore set value ['{"text":"Disabled","color":"red","italic":false}']
execute if data storage practice:gui tower_pages.right[{enabled:0b}] run data modify storage practice:gui tower_pages.right[{enabled:0b}].tag.display.Lore set value ['{"text":"Disabled","color":"red","italic":false}']
scoreboard players set tower_unique_v1 gui 1
function practice:gui/pages/home/load_current_page
