data modify storage practice:gui settings_view set value []
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:3b}}]
execute if data storage practice:gui settings_view[{tag:{index:3b}}] run data modify storage practice:gui settings_view[{tag:{index:3b}}].Slot set value 10b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:8b}}]
execute if data storage practice:gui settings_view[{tag:{index:8b}}] run data modify storage practice:gui settings_view[{tag:{index:8b}}].Slot set value 11b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:19b}}]
execute if data storage practice:gui settings_view[{tag:{index:19b}}] run data modify storage practice:gui settings_view[{tag:{index:19b}}].Slot set value 12b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:4b}}]
execute if data storage practice:gui settings_view[{tag:{index:4b}}] run data modify storage practice:gui settings_view[{tag:{index:4b}}].Slot set value 13b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:20b}}]
execute if data storage practice:gui settings_view[{tag:{index:20b}}] run data modify storage practice:gui settings_view[{tag:{index:20b}}].Slot set value 14b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:6b}}]
execute if data storage practice:gui settings_view[{tag:{index:6b}}] run data modify storage practice:gui settings_view[{tag:{index:6b}}].Slot set value 15b
data modify storage practice:gui settings_view append value {Slot:9b,id:"minecraft:arrow",Count:1b,tag:{index:24b,display:{Name:'{"text":"Dragon Settings","color":"light_purple","italic":false}',Lore:['{"text":"approach and dragon behaviour","color":"gray","italic":false}']}}}
data modify storage practice:gui settings_view append value {Slot:16b,id:"minecraft:end_stone",Count:1b,tag:{index:26b,display:{Name:'{"text":"Custom Spawns","color":"yellow","italic":false}',Lore:['{"text":"pick which spawns Custom rolls from","color":"gray","italic":false}']}}}
data modify storage practice:gui settings_view append value {Slot:17b,id:"minecraft:arrow",Count:1b,tag:{index:25b,display:{Name:'{"text":"Info Settings","color":"gold","italic":false}',Lore:['{"text":"trackers and displays","color":"gray","italic":false}']}}}
