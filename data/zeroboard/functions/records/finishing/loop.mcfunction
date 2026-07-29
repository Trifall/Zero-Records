scoreboard players set #finish_filter_ticks zc_ctrl 0
execute store result score #finish_filter_ticks zc_ctrl run data get storage zeroboard:records work.page_source[0].finish_ticks
execute if score #finish_filter_ticks zc_ctrl matches 1.. run data modify storage zeroboard:records work.finish_source append from storage zeroboard:records work.page_source[0]
data remove storage zeroboard:records work.page_source[0]
execute if data storage zeroboard:records work.page_source[0] run function zeroboard:records/finishing/loop
