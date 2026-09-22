# integer sqrt of `in sqrt` into `out sqrt`. newton from a guess that is at most twice
# the root (power-of-four brackets), so it settles in a few rounds. any start at or
# above the root lands on the same floor(sqrt), so the guess only changes the cost.
scoreboard players set out sqrt 0
scoreboard players set temp sqrt 1
execute if score in sqrt matches 4..65535 run function zeroboard:prediction/sqrt/guess_lo
execute if score in sqrt matches 65536.. run function zeroboard:prediction/sqrt/guess_hi
execute if score in sqrt matches 1.. run function practice:sqrt/itterate
