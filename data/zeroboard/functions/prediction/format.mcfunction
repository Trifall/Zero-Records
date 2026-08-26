scoreboard players operation #pred_minutes zc_ctrl = #finish_ticks zc_ctrl
scoreboard players operation #pred_seconds zc_ctrl = #finish_ticks zc_ctrl
scoreboard players operation #pred_hundredths zc_ctrl = #finish_ticks zc_ctrl
scoreboard players operation #pred_minutes zc_ctrl /= #c1200 zc_ctrl
scoreboard players operation #pred_seconds zc_ctrl /= #c20 zc_ctrl
scoreboard players operation #pred_seconds zc_ctrl %= #c60 zc_ctrl
scoreboard players operation #pred_hundredths zc_ctrl %= #c20 zc_ctrl
scoreboard players operation #pred_hundredths zc_ctrl *= #c5 zc_ctrl
execute if score #pred_minutes zc_ctrl matches 0 if score #pred_hundredths zc_ctrl matches 0..9 run data modify storage zeroboard:records work.predicted_finish_string set value '[{"score":{"name":"#pred_seconds","objective":"zc_ctrl"}},{"text":".0"},{"score":{"name":"#pred_hundredths","objective":"zc_ctrl"}},{"text":"s"}]'
execute if score #pred_minutes zc_ctrl matches 0 if score #pred_hundredths zc_ctrl matches 10.. run data modify storage zeroboard:records work.predicted_finish_string set value '[{"score":{"name":"#pred_seconds","objective":"zc_ctrl"}},{"text":"."},{"score":{"name":"#pred_hundredths","objective":"zc_ctrl"}},{"text":"s"}]'
execute if score #pred_minutes zc_ctrl matches 1.. if score #pred_hundredths zc_ctrl matches 0..9 run data modify storage zeroboard:records work.predicted_finish_string set value '[{"score":{"name":"#pred_minutes","objective":"zc_ctrl"}},{"text":"m "},{"score":{"name":"#pred_seconds","objective":"zc_ctrl"}},{"text":".0"},{"score":{"name":"#pred_hundredths","objective":"zc_ctrl"}},{"text":"s"}]'
execute if score #pred_minutes zc_ctrl matches 1.. if score #pred_hundredths zc_ctrl matches 10.. run data modify storage zeroboard:records work.predicted_finish_string set value '[{"score":{"name":"#pred_minutes","objective":"zc_ctrl"}},{"text":"m "},{"score":{"name":"#pred_seconds","objective":"zc_ctrl"}},{"text":"."},{"score":{"name":"#pred_hundredths","objective":"zc_ctrl"}},{"text":"s"}]'
