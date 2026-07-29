scoreboard players operation old_tower_page gui = tower_page gui
execute if score old_tower_page gui matches 0 run scoreboard players set tower_page gui 1
execute if score old_tower_page gui matches 1 run scoreboard players set tower_page gui 0
