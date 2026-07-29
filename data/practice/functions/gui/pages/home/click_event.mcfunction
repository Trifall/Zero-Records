execute if score index gui matches 0..9 run function practice:gui/pages/home/toggle_tower
execute if score index gui matches 10 run function practice:gui/pages/home/enable_all_towers
execute if score index gui matches 11 run function practice:gui/pages/home/disable_all_towers

# write the toggle back to its own page
execute if score index gui matches 0..11 run function practice:gui/pages/home/enforce_current_page
execute if score index gui matches 0..11 run function practice:gui/pages/home/sync_current_page

# page arrows
execute if score index gui matches 24 run function practice:gui/pages/home/page_left
execute if score index gui matches 25 run function practice:gui/pages/home/page_right

execute if score index gui matches 26 in the_end run function practice:onecycle/edit_setup
