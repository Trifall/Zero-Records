# puts maxCommandChainLength back to whatever it was before this pack raised it.
# run it by hand before removing the pack:
#   /function zeroboard:settings/restore_chain_length
# a score cannot be fed to a gamerule in this pack format, so only the vanilla default
# goes back on its own. any other value gets printed so it can be set by hand.

execute unless score #chain_len_saved zc_ctrl matches 1 run tellraw @s {"text":"Zero Records never changed maxCommandChainLength, nothing to restore.","color":"gray"}

execute if score #chain_len_saved zc_ctrl matches 1 if score #chain_len_original zc_ctrl matches 65536 run gamerule maxCommandChainLength 65536
execute if score #chain_len_saved zc_ctrl matches 1 if score #chain_len_original zc_ctrl matches 65536 run tellraw @s {"text":"maxCommandChainLength restored to 65536.","color":"green"}

execute if score #chain_len_saved zc_ctrl matches 1 unless score #chain_len_original zc_ctrl matches 65536 run tellraw @s [{"text":"This world's original maxCommandChainLength was ","color":"gold"},{"score":{"name":"#chain_len_original","objective":"zc_ctrl"},"color":"white"},{"text":". Set it back with /gamerule maxCommandChainLength <that value>.","color":"gold"}]

scoreboard players set #chain_len_saved zc_ctrl 0
