# reads the page in practice:gui pool_src rather than pages[0].entries - choose_tower
# is the only caller and runs all three pages through
data modify storage practice:towers towers[{index:0b}].enabled set from storage practice:gui pool_src[{tag:{index:0b}}].enabled
data modify storage practice:towers towers[{index:1b}].enabled set from storage practice:gui pool_src[{tag:{index:1b}}].enabled
data modify storage practice:towers towers[{index:2b}].enabled set from storage practice:gui pool_src[{tag:{index:2b}}].enabled
data modify storage practice:towers towers[{index:3b}].enabled set from storage practice:gui pool_src[{tag:{index:3b}}].enabled
data modify storage practice:towers towers[{index:4b}].enabled set from storage practice:gui pool_src[{tag:{index:4b}}].enabled
data modify storage practice:towers towers[{index:5b}].enabled set from storage practice:gui pool_src[{tag:{index:5b}}].enabled
data modify storage practice:towers towers[{index:6b}].enabled set from storage practice:gui pool_src[{tag:{index:6b}}].enabled
data modify storage practice:towers towers[{index:7b}].enabled set from storage practice:gui pool_src[{tag:{index:7b}}].enabled
data modify storage practice:towers towers[{index:8b}].enabled set from storage practice:gui pool_src[{tag:{index:8b}}].enabled
data modify storage practice:towers towers[{index:9b}].enabled set from storage practice:gui pool_src[{tag:{index:9b}}].enabled
