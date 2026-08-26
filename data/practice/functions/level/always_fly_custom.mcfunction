# custom_diag_fly is the node height. diagonal barrier = fly-16, straight = fly-6.
scoreboard players operation #af_diag zc_ctrl = value custom_diag_fly
scoreboard players remove #af_diag zc_ctrl 16
scoreboard players operation #af_str zc_ctrl = value custom_diag_fly
scoreboard players remove #af_str zc_ctrl 6

scoreboard players operation #pb_y zc_ctrl = #af_diag zc_ctrl
scoreboard players set #pb_x zc_ctrl 28
scoreboard players set #pb_z zc_ctrl -29
function practice:level/place_barrier
scoreboard players set #pb_x zc_ctrl -29
scoreboard players set #pb_z zc_ctrl 28
function practice:level/place_barrier

scoreboard players operation #pb_y zc_ctrl = #af_str zc_ctrl
scoreboard players set #pb_z zc_ctrl 0
scoreboard players set #pb_x zc_ctrl 20
function practice:level/place_barrier
scoreboard players set #pb_x zc_ctrl -20
function practice:level/place_barrier
