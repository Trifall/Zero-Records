function zeroboard:records/save

tellraw @a [{"text":"  Tower: "},{"nbt":"active","storage":"practice:towers","color":"green"}]

# type label, incl. the fast / slow variants
data modify storage zeroboard:records work.kill_type set from storage zeroboard:records current.approach
function zeroboard:settings/angle_label
tellraw @a [{"text":"  Type: "},{"nbt":"work.kill_type","storage":"zeroboard:records","color":"green"}]

tellraw @a [{"text":"  Standing Height: "},{"score":{"name":"height","objective":"stats"},"color":"green"}]
