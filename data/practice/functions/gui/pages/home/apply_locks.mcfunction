execute if data storage practice:gui lock_a[{tag:{index:0b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:0b}}].locked set value 1b
execute if data storage practice:gui lock_b[{tag:{index:0b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:0b}}].locked set value 1b
execute if data storage practice:gui lock_a[{tag:{index:1b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:1b}}].locked set value 1b
execute if data storage practice:gui lock_b[{tag:{index:1b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:1b}}].locked set value 1b
execute if data storage practice:gui lock_a[{tag:{index:2b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:2b}}].locked set value 1b
execute if data storage practice:gui lock_b[{tag:{index:2b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:2b}}].locked set value 1b
execute if data storage practice:gui lock_a[{tag:{index:3b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:3b}}].locked set value 1b
execute if data storage practice:gui lock_b[{tag:{index:3b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:3b}}].locked set value 1b
execute if data storage practice:gui lock_a[{tag:{index:4b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:4b}}].locked set value 1b
execute if data storage practice:gui lock_b[{tag:{index:4b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:4b}}].locked set value 1b
execute if data storage practice:gui lock_a[{tag:{index:5b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:5b}}].locked set value 1b
execute if data storage practice:gui lock_b[{tag:{index:5b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:5b}}].locked set value 1b
execute if data storage practice:gui lock_a[{tag:{index:6b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:6b}}].locked set value 1b
execute if data storage practice:gui lock_b[{tag:{index:6b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:6b}}].locked set value 1b
execute if data storage practice:gui lock_a[{tag:{index:7b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:7b}}].locked set value 1b
execute if data storage practice:gui lock_b[{tag:{index:7b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:7b}}].locked set value 1b
execute if data storage practice:gui lock_a[{tag:{index:8b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:8b}}].locked set value 1b
execute if data storage practice:gui lock_b[{tag:{index:8b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:8b}}].locked set value 1b
execute if data storage practice:gui lock_a[{tag:{index:9b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:9b}}].locked set value 1b
execute if data storage practice:gui lock_b[{tag:{index:9b},enabled:1b}] run data modify storage practice:gui tower_view[{tag:{index:9b}}].locked set value 1b

data modify storage practice:gui tower_view[{locked:1b}].id set value "minecraft:bedrock"
data remove storage practice:gui tower_view[{locked:1b}].tag.Enchantments
data modify storage practice:gui tower_view[{locked:1b}].tag.display.Lore set value ['{"text":"Already picked on another page","color":"red","italic":false}']
data modify storage practice:gui tower_view[{locked:1b}].tag.index set value 23b
data remove storage practice:gui tower_view[].locked
