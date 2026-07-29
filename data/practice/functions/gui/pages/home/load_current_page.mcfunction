execute if score tower_page gui matches 0 run data modify storage practice:gui pages[0].entries set from storage practice:gui tower_pages.left
execute if score tower_page gui matches 1 run data modify storage practice:gui pages[0].entries set from storage practice:gui tower_pages.center
execute if score tower_page gui matches 2 run data modify storage practice:gui pages[0].entries set from storage practice:gui tower_pages.right
data remove storage practice:gui pages[0].entries[].active
