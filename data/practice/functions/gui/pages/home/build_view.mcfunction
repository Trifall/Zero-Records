execute unless score tower_pages_v2 gui matches 1 run function practice:gui/pages/home/init_pages
execute unless score tower_unique_v1 gui matches 1 run function practice:gui/pages/home/normalize_pages

data remove storage practice:gui tower_pages.left[{tag:{index:23b}}]
data remove storage practice:gui tower_pages.left[{tag:{index:24b}}]
data remove storage practice:gui tower_pages.left[{tag:{index:25b}}]
data remove storage practice:gui tower_pages.center[{tag:{index:23b}}]
data remove storage practice:gui tower_pages.center[{tag:{index:24b}}]
data remove storage practice:gui tower_pages.center[{tag:{index:25b}}]
data remove storage practice:gui tower_pages.right[{tag:{index:23b}}]
data remove storage practice:gui tower_pages.right[{tag:{index:24b}}]
data remove storage practice:gui tower_pages.right[{tag:{index:25b}}]
data remove storage practice:gui pages[0].entries[{tag:{index:23b}}]
data remove storage practice:gui pages[0].entries[{tag:{index:24b}}]
data remove storage practice:gui pages[0].entries[{tag:{index:25b}}]

data modify storage practice:gui tower_view set from storage practice:gui pages[0].entries
function practice:gui/pages/home/prepare_locks
function practice:gui/pages/home/apply_locks

data remove storage practice:gui tower_view[{Slot:8b}]
data modify storage practice:gui tower_view[{tag:{index:26b}}].Slot set value 8b

data remove storage practice:gui tower_view[{Slot:9b}]
data remove storage practice:gui tower_view[{Slot:17b}]
execute if score tower_page gui matches 1 run data modify storage practice:gui tower_view append value {Slot:9b,id:"minecraft:arrow",Count:1b,tag:{index:24b,display:{Name:'{"text":"Left Towers Page","color":"green","italic":false}',Lore:['{"text":"Pick the tower left of the node","color":"gray","italic":false}']}}}
execute if score tower_page gui matches 2 run data modify storage practice:gui tower_view append value {Slot:9b,id:"minecraft:arrow",Count:1b,tag:{index:24b,display:{Name:'{"text":"Main Towers Page","color":"light_purple","italic":false}',Lore:['{"text":"Return to the main tower picker","color":"gray","italic":false}']}}}
execute if score tower_page gui matches 0 run data modify storage practice:gui tower_view append value {Slot:17b,id:"minecraft:arrow",Count:1b,tag:{index:25b,display:{Name:'{"text":"Main Towers Page","color":"light_purple","italic":false}',Lore:['{"text":"Return to the main tower picker","color":"gray","italic":false}']}}}
execute if score tower_page gui matches 1 run data modify storage practice:gui tower_view append value {Slot:17b,id:"minecraft:arrow",Count:1b,tag:{index:25b,display:{Name:'{"text":"Right Towers Page","color":"gold","italic":false}',Lore:['{"text":"Pick the tower right of the node","color":"gray","italic":false}']}}}
