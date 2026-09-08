data modify storage practice:gui settings_view set value []
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:0b}}]
execute if data storage practice:gui settings_view[{tag:{index:0b}}] run data modify storage practice:gui settings_view[{tag:{index:0b}}].Slot set value 9b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:7b}}]
execute if data storage practice:gui settings_view[{tag:{index:7b}}] run data modify storage practice:gui settings_view[{tag:{index:7b}}].Slot set value 10b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:1b}}]
execute if data storage practice:gui settings_view[{tag:{index:1b}}] run data modify storage practice:gui settings_view[{tag:{index:1b}}].Slot set value 11b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:14b}}]
execute if data storage practice:gui settings_view[{tag:{index:14b}}] run data modify storage practice:gui settings_view[{tag:{index:14b}}].Slot set value 12b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:17b}}]
execute if data storage practice:gui settings_view[{tag:{index:17b}}] run data modify storage practice:gui settings_view[{tag:{index:17b}}].Slot set value 13b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:15b}}]
execute if data storage practice:gui settings_view[{tag:{index:15b}}] run data modify storage practice:gui settings_view[{tag:{index:15b}}].Slot set value 14b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:16b}}]
execute if data storage practice:gui settings_view[{tag:{index:16b}}] run data modify storage practice:gui settings_view[{tag:{index:16b}}].Slot set value 15b
data modify storage practice:gui settings_view append from storage practice:gui pages[1].entries[{tag:{index:13b}}]
execute if data storage practice:gui settings_view[{tag:{index:13b}}] run data modify storage practice:gui settings_view[{tag:{index:13b}}].Slot set value 16b
data modify storage practice:gui settings_view append value {Slot:17b,id:"minecraft:arrow",Count:1b,tag:{index:25b,display:{Name:'{"text":"Run Settings","color":"green","italic":false}',Lore:['{"text":"player and world setup","color":"gray","italic":false}']}}}
