# the randomizer keeps the top left and top mid slots now. the two description lines
# follow the options in every base pack (2 or 3 of them), so index from the end. Lore
# is the rendered copy the menu shows until the entry is next clicked
data modify storage practice:gui pages[1].entries[{tag:{index:8b}}].tag.display.LoreGray[-2] set value '{"text":"Randomizes item positions (except hotbar,","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].entries[{tag:{index:8b}}].tag.display.LoreGray[-1] set value '{"text":"top left and top mid) and fills inventory with junk","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].entries[{tag:{index:8b}}].tag.display.LoreColor[-2] set value '{"text":"Randomizes item positions (except hotbar,","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].entries[{tag:{index:8b}}].tag.display.LoreColor[-1] set value '{"text":"top left and top mid) and fills inventory with junk","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].entries[{tag:{index:8b}}].tag.display.Lore[-2] set value '{"text":"Randomizes item positions (except hotbar,","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].entries[{tag:{index:8b}}].tag.display.Lore[-1] set value '{"text":"top left and top mid) and fills inventory with junk","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].defaults[{tag:{index:8b}}].tag.display.LoreGray[-2] set value '{"text":"Randomizes item positions (except hotbar,","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].defaults[{tag:{index:8b}}].tag.display.LoreGray[-1] set value '{"text":"top left and top mid) and fills inventory with junk","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].defaults[{tag:{index:8b}}].tag.display.LoreColor[-2] set value '{"text":"Randomizes item positions (except hotbar,","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].defaults[{tag:{index:8b}}].tag.display.LoreColor[-1] set value '{"text":"top left and top mid) and fills inventory with junk","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].defaults[{tag:{index:8b}}].tag.display.Lore[-2] set value '{"text":"Randomizes item positions (except hotbar,","color":"dark_gray","italic":"false"}'
data modify storage practice:gui pages[1].defaults[{tag:{index:8b}}].tag.display.Lore[-1] set value '{"text":"top left and top mid) and fills inventory with junk","color":"dark_gray","italic":"false"}'
