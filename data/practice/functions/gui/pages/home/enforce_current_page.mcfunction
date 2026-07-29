function practice:gui/pages/home/prepare_locks
execute if data storage practice:gui lock_a[{tag:{index:0b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:0b}}].reserved set value 1b
execute if data storage practice:gui lock_b[{tag:{index:0b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:0b}}].reserved set value 1b
execute if data storage practice:gui lock_a[{tag:{index:1b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:1b}}].reserved set value 1b
execute if data storage practice:gui lock_b[{tag:{index:1b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:1b}}].reserved set value 1b
execute if data storage practice:gui lock_a[{tag:{index:2b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:2b}}].reserved set value 1b
execute if data storage practice:gui lock_b[{tag:{index:2b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:2b}}].reserved set value 1b
execute if data storage practice:gui lock_a[{tag:{index:3b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:3b}}].reserved set value 1b
execute if data storage practice:gui lock_b[{tag:{index:3b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:3b}}].reserved set value 1b
execute if data storage practice:gui lock_a[{tag:{index:4b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:4b}}].reserved set value 1b
execute if data storage practice:gui lock_b[{tag:{index:4b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:4b}}].reserved set value 1b
execute if data storage practice:gui lock_a[{tag:{index:5b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:5b}}].reserved set value 1b
execute if data storage practice:gui lock_b[{tag:{index:5b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:5b}}].reserved set value 1b
execute if data storage practice:gui lock_a[{tag:{index:6b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:6b}}].reserved set value 1b
execute if data storage practice:gui lock_b[{tag:{index:6b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:6b}}].reserved set value 1b
execute if data storage practice:gui lock_a[{tag:{index:7b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:7b}}].reserved set value 1b
execute if data storage practice:gui lock_b[{tag:{index:7b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:7b}}].reserved set value 1b
execute if data storage practice:gui lock_a[{tag:{index:8b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:8b}}].reserved set value 1b
execute if data storage practice:gui lock_b[{tag:{index:8b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:8b}}].reserved set value 1b
execute if data storage practice:gui lock_a[{tag:{index:9b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:9b}}].reserved set value 1b
execute if data storage practice:gui lock_b[{tag:{index:9b},enabled:1b}] run data modify storage practice:gui pages[0].entries[{tag:{index:9b}}].reserved set value 1b

data modify storage practice:gui pages[0].entries[{reserved:1b}].enabled set value 0b
data remove storage practice:gui pages[0].entries[{reserved:1b}].tag.Enchantments
data modify storage practice:gui pages[0].entries[{reserved:1b}].tag.display.Lore set value ['{"text":"Disabled","color":"red","italic":false}']
data remove storage practice:gui pages[0].entries[].reserved
