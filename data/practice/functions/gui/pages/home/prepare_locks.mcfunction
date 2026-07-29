# the approach pins which tower sits either side of the center one,
# so those cannot be toggled here

data modify storage practice:gui lock_a set value []
data modify storage practice:gui lock_b set value []
execute if score tower_page gui matches 0 run data modify storage practice:gui lock_a set from storage practice:gui tower_pages.center
execute if score tower_page gui matches 0 run data modify storage practice:gui lock_b set from storage practice:gui tower_pages.right
execute if score tower_page gui matches 1 run data modify storage practice:gui lock_a set from storage practice:gui tower_pages.left
execute if score tower_page gui matches 1 run data modify storage practice:gui lock_b set from storage practice:gui tower_pages.right
execute if score tower_page gui matches 2 run data modify storage practice:gui lock_a set from storage practice:gui tower_pages.left
execute if score tower_page gui matches 2 run data modify storage practice:gui lock_b set from storage practice:gui tower_pages.center
