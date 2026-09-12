data remove storage practice:gui spawn_stack[0]

scoreboard players remove r rng 1
execute if score r rng matches 1.. run function practice:level/choose_spawn_pool_loop
