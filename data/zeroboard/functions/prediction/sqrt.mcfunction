scoreboard players set out sqrt 0
scoreboard players set temp sqrt 1
execute if score in sqrt matches 1..9999 run scoreboard players set temp sqrt 100
execute if score in sqrt matches 10000..999999 run scoreboard players set temp sqrt 1000
execute if score in sqrt matches 1000000..99999999 run scoreboard players set temp sqrt 10000
execute if score in sqrt matches 100000000.. run scoreboard players set temp sqrt 40000
execute if score in sqrt matches 1.. run function practice:sqrt/itterate
