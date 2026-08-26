# settings menu is three sub-pages (Dragon / Run / Info), swapped by the side
# arrows. rebuild the view from pages[1].entries for the current settings_page.
data remove storage practice:gui settings_view
execute if score settings_page gui matches 0 run function practice:gui/pages/settings/view_dragon
execute if score settings_page gui matches 1 run function practice:gui/pages/settings/view_run
execute if score settings_page gui matches 2 run function practice:gui/pages/settings/view_info
