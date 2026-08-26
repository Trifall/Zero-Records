# append practice:gui tmpl to the settings entries and defaults. #tmpl_value /
# #tmpl_default are the values read off the old copies (-1 when there was none);
# anything off the end of the list falls back to the template's own value.
execute store result score #tmpl_size zc_ctrl run data get storage practice:gui tmpl.size
execute store result score #tmpl_fallback zc_ctrl run data get storage practice:gui tmpl.value
scoreboard players remove #tmpl_size zc_ctrl 1
execute unless score #tmpl_value zc_ctrl matches 0.. run scoreboard players operation #tmpl_value zc_ctrl = #tmpl_fallback zc_ctrl
execute if score #tmpl_value zc_ctrl > #tmpl_size zc_ctrl run scoreboard players operation #tmpl_value zc_ctrl = #tmpl_fallback zc_ctrl
execute unless score #tmpl_default zc_ctrl matches 0.. run scoreboard players operation #tmpl_default zc_ctrl = #tmpl_fallback zc_ctrl
execute if score #tmpl_default zc_ctrl > #tmpl_size zc_ctrl run scoreboard players operation #tmpl_default zc_ctrl = #tmpl_fallback zc_ctrl

data modify storage practice:gui hl set from storage practice:gui tmpl
execute store result storage practice:gui hl.value byte 1 run scoreboard players get #tmpl_value zc_ctrl
scoreboard players operation #hl_value zc_ctrl = #tmpl_value zc_ctrl
function practice:gui/highlight
data modify storage practice:gui pages[1].entries append from storage practice:gui hl

execute store result storage practice:gui hl.value byte 1 run scoreboard players get #tmpl_default zc_ctrl
scoreboard players operation #hl_value zc_ctrl = #tmpl_default zc_ctrl
function practice:gui/highlight
data modify storage practice:gui pages[1].defaults append from storage practice:gui hl
