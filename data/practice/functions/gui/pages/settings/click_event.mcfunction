# the spawn pool page reuses indices 0..17 for its toggles, so it gets its own handler.
# pool first would flip settings_page to 1 and let the next line step it again
execute unless score settings_page gui matches 3 run function practice:gui/pages/settings/click_setting
execute if score settings_page gui matches 3 run function practice:gui/pages/settings/spawn_pool/click_event
