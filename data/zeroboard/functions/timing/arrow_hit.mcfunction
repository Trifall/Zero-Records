execute if score timing_tracker settings matches 0 unless score in_lobby flags matches 1 run tellraw @a [{"nbt":"time_string","storage":"practice:timeparser","interpret":true},{"text":" Arrow Hit","color":"white"}]
advancement revoke @s only zeroboard:arrow_hit
