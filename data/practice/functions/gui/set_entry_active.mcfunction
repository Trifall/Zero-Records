data remove storage practice:gui pages[{active:1b}].entries[].active

execute if score index gui matches 0 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:0b}}].active set value 1b
execute if score index gui matches 1 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:1b}}].active set value 1b
execute if score index gui matches 2 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:2b}}].active set value 1b
execute if score index gui matches 3 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:3b}}].active set value 1b
execute if score index gui matches 4 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:4b}}].active set value 1b
execute if score index gui matches 5 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:5b}}].active set value 1b
execute if score index gui matches 6 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:6b}}].active set value 1b
execute if score index gui matches 7 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:7b}}].active set value 1b
execute if score index gui matches 8 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:8b}}].active set value 1b
execute if score index gui matches 9 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:9b}}].active set value 1b
execute if score index gui matches 10 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:10b}}].active set value 1b
execute if score index gui matches 11 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:11b}}].active set value 1b
execute if score index gui matches 12 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:12b}}].active set value 1b
execute if score index gui matches 13 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:13b}}].active set value 1b
execute if score index gui matches 14 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:14b}}].active set value 1b
execute if score index gui matches 15 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:15b}}].active set value 1b
execute if score index gui matches 16 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:16b}}].active set value 1b
execute if score index gui matches 19 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:19b}}].active set value 1b
execute if score index gui matches 20 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:20b}}].active set value 1b
execute if score index gui matches 21 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:21b}}].active set value 1b
execute if score index gui matches 22 run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:22b}}].active set value 1b
# 23-26 are page arrows / fillers on some pages, not entries. only mark them where one exists,
# the filter form of data modify would append a bare copy otherwise
execute if score index gui matches 23 if data storage practice:gui pages[{active:1b}].entries[{tag:{index:23b}}] run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:23b}}].active set value 1b
execute if score index gui matches 24 if data storage practice:gui pages[{active:1b}].entries[{tag:{index:24b}}] run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:24b}}].active set value 1b
execute if score index gui matches 25 if data storage practice:gui pages[{active:1b}].entries[{tag:{index:25b}}] run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:25b}}].active set value 1b
execute if score index gui matches 26 if data storage practice:gui pages[{active:1b}].entries[{tag:{index:26b}}] run data modify storage practice:gui pages[{active:1b}].entries[{tag:{index:26b}}].active set value 1b
