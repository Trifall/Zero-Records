# one time split of the base pack's single tower page into left / center / right
data modify storage practice:gui tower_pages.center set from storage practice:gui pages[0].entries
data modify storage practice:gui tower_pages.left set from storage practice:gui pages[0].entries
data modify storage practice:gui tower_pages.right set from storage practice:gui pages[0].entries
scoreboard players set tower_page gui 1
scoreboard players set tower_pages_v2 gui 1
