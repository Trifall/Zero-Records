# the first build listed Vanilla ahead of Ranked. one time swap of 0 <-> 1.
scoreboard players operation #fly_entry_old zc_ctrl = #tmpl_value zc_ctrl
scoreboard players operation #fly_default_old zc_ctrl = #tmpl_default zc_ctrl
execute if score #fly_entry_old zc_ctrl matches 0 run scoreboard players set #tmpl_value zc_ctrl 1
execute if score #fly_entry_old zc_ctrl matches 1 run scoreboard players set #tmpl_value zc_ctrl 0
execute if score #fly_default_old zc_ctrl matches 0 run scoreboard players set #tmpl_default zc_ctrl 1
execute if score #fly_default_old zc_ctrl matches 1 run scoreboard players set #tmpl_default zc_ctrl 0
