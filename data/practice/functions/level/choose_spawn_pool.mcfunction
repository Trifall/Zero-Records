# flat roll over the spawns ticked on the settings chest's spawn pool page.
# falls back to every spawn if the pool is empty
data modify storage practice:gui spawn_stack set from storage practice:gui spawn_pool
data remove storage practice:gui spawn_stack[{enabled:0b}]
execute unless data storage practice:gui spawn_stack[0] run data modify storage practice:gui spawn_stack set from storage practice:gui spawn_pool

execute store result score mod rng run data get storage practice:gui spawn_stack
function practice:random/generate
execute if score r rng matches 1.. run function practice:level/choose_spawn_pool_loop

execute store result score spawn_act settings run data get storage practice:gui spawn_stack[0].spawn
