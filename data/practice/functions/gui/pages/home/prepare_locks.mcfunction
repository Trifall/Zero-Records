# the approach pins which tower sits either side of the center one, so a tower
# enabled on either of the other two pages cannot be toggled on this one
data modify storage practice:gui locks set value []
execute if score tower_page gui matches 0 run data modify storage practice:gui locks append from storage practice:gui tower_pages.center[{enabled:1b}]
execute if score tower_page gui matches 0 run data modify storage practice:gui locks append from storage practice:gui tower_pages.right[{enabled:1b}]
execute if score tower_page gui matches 1 run data modify storage practice:gui locks append from storage practice:gui tower_pages.left[{enabled:1b}]
execute if score tower_page gui matches 1 run data modify storage practice:gui locks append from storage practice:gui tower_pages.right[{enabled:1b}]
execute if score tower_page gui matches 2 run data modify storage practice:gui locks append from storage practice:gui tower_pages.left[{enabled:1b}]
execute if score tower_page gui matches 2 run data modify storage practice:gui locks append from storage practice:gui tower_pages.center[{enabled:1b}]
