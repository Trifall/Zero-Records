data modify storage zeroboard:records work.unique_source set value []
data modify storage zeroboard:records work.unique_source set from storage zeroboard:records work.page_source
data modify storage zeroboard:records unique set value []
execute if data storage zeroboard:records work.unique_source[0] run function zeroboard:records/unique/group
scoreboard players set #unique_dirty zc_ctrl 0
