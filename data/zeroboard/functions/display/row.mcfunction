data modify storage zeroboard:records work.render set from storage zeroboard:records work.rows[0]
function zeroboard:display/record
tag @e[tag=zc_target_line1] remove zc_target_line1
tag @e[tag=zc_target_line2] remove zc_target_line2
data remove storage zeroboard:records work.rows[0]
data remove storage zeroboard:records work.render
