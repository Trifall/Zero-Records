kill @e[tag=zc_display]
summon minecraft:armor_stand 139.5 72.65 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["zc_display","zc_title"],CustomName:'{"text":"Zero Cycle Archive","color":"aqua","bold":true}'}
summon minecraft:armor_stand 139.5 72.15 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["zc_display","zc_page"],CustomName:'{"score":{"name":"ZPage","objective":"zc_ctrl"},"color":"white"}'}
summon minecraft:armor_stand 139.5 71.75 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["zc_display","zc_pb"],CustomName:'{"text":"PB: --","color":"light_purple","bold":true}'}
summon minecraft:armor_stand 139.5 69.0 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_empty"],CustomName:'{"text":"No completed zero cycles match these filters.","color":"gray","italic":true}'}
summon minecraft:armor_stand 139.5 71.30 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_record_line","zc_r0_line1"]}
summon minecraft:armor_stand 139.5 70.86 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_record_line","zc_r0_line2"]}
summon minecraft:armor_stand 139.5 70.15 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_record_line","zc_r1_line1"]}
summon minecraft:armor_stand 139.5 69.71 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_record_line","zc_r1_line2"]}
summon minecraft:armor_stand 139.5 69.00 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_record_line","zc_r2_line1"]}
summon minecraft:armor_stand 139.5 68.56 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_record_line","zc_r2_line2"]}
summon minecraft:armor_stand 139.5 67.85 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_record_line","zc_r3_line1"]}
summon minecraft:armor_stand 139.5 67.41 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_record_line","zc_r3_line2"]}
summon minecraft:armor_stand 139.5 66.70 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_record_line","zc_r4_line1"]}
summon minecraft:armor_stand 139.5 66.26 0.5 {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["zc_display","zc_record_line","zc_r4_line2"]}
function zeroboard:display/buttons
function zeroboard:display/render
