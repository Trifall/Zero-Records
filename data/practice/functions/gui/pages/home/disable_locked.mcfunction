# nothing flagged has to stay a no-op, a filter with no match would append a bare copy
execute if data storage practice:gui mark[{locked:1b}] run data modify storage practice:gui mark[{locked:1b}].enabled set value 0b
data remove storage practice:gui mark[{locked:1b}].tag.Enchantments
execute if data storage practice:gui mark[{locked:1b}] run data modify storage practice:gui mark[{locked:1b}].tag.display.Lore set value ['{"text":"Disabled","color":"red","italic":false}']
data remove storage practice:gui mark[].locked
