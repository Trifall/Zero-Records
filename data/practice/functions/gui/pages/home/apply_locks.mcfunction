# show the towers taken by the other pages as bedrock, and give them the
# no-op index 23 so a click does nothing
data modify storage practice:gui mark set from storage practice:gui tower_view
function practice:gui/pages/home/mark_locked
execute if data storage practice:gui mark[{locked:1b}] run data modify storage practice:gui mark[{locked:1b}].id set value "minecraft:bedrock"
data remove storage practice:gui mark[{locked:1b}].tag.Enchantments
execute if data storage practice:gui mark[{locked:1b}] run data modify storage practice:gui mark[{locked:1b}].tag.display.Lore set value ['{"text":"Already picked on another page","color":"red","italic":false}']
execute if data storage practice:gui mark[{locked:1b}] run data modify storage practice:gui mark[{locked:1b}].tag.index set value 23b
data remove storage practice:gui mark[].locked
data modify storage practice:gui tower_view set from storage practice:gui mark
