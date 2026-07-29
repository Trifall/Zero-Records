data modify storage zeroboard:records work.source set value []
data modify storage zeroboard:records work.source set from storage zeroboard:records records
data modify storage zeroboard:records filtered set value []
execute if data storage zeroboard:records work.source[0] run function zeroboard:filter/loop
scoreboard players set #page zc_ctrl 0
scoreboard players set #dirty zc_ctrl 0
scoreboard players set #unique_dirty zc_ctrl 1
function zeroboard:display/render
