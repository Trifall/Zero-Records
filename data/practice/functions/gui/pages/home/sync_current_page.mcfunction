data remove storage practice:gui pages[0].entries[].active
execute if score tower_page gui matches 0 run data modify storage practice:gui tower_pages.left set from storage practice:gui pages[0].entries
execute if score tower_page gui matches 1 run data modify storage practice:gui tower_pages.center set from storage practice:gui pages[0].entries
execute if score tower_page gui matches 2 run data modify storage practice:gui tower_pages.right set from storage practice:gui pages[0].entries
