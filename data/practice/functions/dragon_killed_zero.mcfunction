execute if score timer settings matches 0 run tellraw @a [{"text":"  Time: "},{"nbt":"time_string","storage":"practice:timeparser","interpret":true,"color":"gold"}]

function zeroboard:records/save

tellraw @a [{"text":"  Tower: "},{"nbt":"active","storage":"practice:towers","color":"green"}]

data modify storage zeroboard:records work.kill_type set from storage zeroboard:records current.approach
function zeroboard:settings/angle_label
tellraw @a [{"text":"  Type: "},{"nbt":"work.kill_type","storage":"zeroboard:records","color":"green"},{"nbt":"work.kill_angle","storage":"zeroboard:records","interpret":true,"color":"green"}]

tellraw @a [{"text":"  Standing Height: "},{"score":{"name":"height","objective":"stats"},"color":"green"}]
execute if data storage zeroboard:records current{cover:2} run tellraw @a [{"text":"  Buried Height: "},{"nbt":"current.buried","storage":"zeroboard:records","color":"green"}]
