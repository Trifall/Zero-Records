data modify storage zeroboard:records work.finish_source set value []
execute if data storage zeroboard:records work.page_source[0] run function zeroboard:records/finishing/loop
data modify storage zeroboard:records work.page_source set from storage zeroboard:records work.finish_source
data remove storage zeroboard:records work.finish_source
