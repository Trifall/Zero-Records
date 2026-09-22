# flush a whole branch inside one tick, until it lands or hits 600 steps.
# only force_finish needs this, when a reset means there is no next tick to carry on.
# this is why load raises maxCommandChainLength.
scoreboard players set #sim_budget zc_ctrl 600
function zeroboard:prediction/chunk
