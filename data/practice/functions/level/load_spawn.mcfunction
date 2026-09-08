# clear stone left over from a taller buried spawn
fill 96 52 -4 104 65 4 minecraft:air replace minecraft:end_stone
setblock 100 42 0 minecraft:structure_block{posX:-22,posY:1,posZ:-15,mode:"LOAD"}

# spawn list went 9 -> 19 entries. menu order is
#   0 Natural Distribution   1 Uniformly Random   2 Random Buried
#   3 Open   4 Overhang   5..18 Buried 52..65
# but spawn_act keeps the base pack's numbering, so 3 and 4 are mapped back and the
# buried entries are shifted down by 2 to land on spawn_act 3..16.
scoreboard players operation spawn_act settings = spawn settings
execute if score spawn settings matches 3 run scoreboard players set spawn_act settings 0
execute if score spawn settings matches 4 run scoreboard players set spawn_act settings 1
execute if score spawn settings matches 5..18 run scoreboard players remove spawn_act settings 2

# natural distribution - weighted to match how often each spawn occurs in real seeds
execute if score spawn settings matches 0 run scoreboard players set mod rng 10000
execute if score spawn settings matches 0 run function practice:random/generate
execute if score spawn settings matches 0 run scoreboard players operation #spawn_roll settings = r rng
execute if score spawn settings matches 0 if score #spawn_roll settings matches 0..39 run scoreboard players set spawn_act settings 3
execute if score spawn settings matches 0 if score #spawn_roll settings matches 40..109 run scoreboard players set spawn_act settings 4
execute if score spawn settings matches 0 if score #spawn_roll settings matches 110..179 run scoreboard players set spawn_act settings 5
execute if score spawn settings matches 0 if score #spawn_roll settings matches 180..249 run scoreboard players set spawn_act settings 6
execute if score spawn settings matches 0 if score #spawn_roll settings matches 250..1179 run scoreboard players set spawn_act settings 7
execute if score spawn settings matches 0 if score #spawn_roll settings matches 1180..2089 run scoreboard players set spawn_act settings 8
execute if score spawn settings matches 0 if score #spawn_roll settings matches 2090..2579 run scoreboard players set spawn_act settings 9
execute if score spawn settings matches 0 if score #spawn_roll settings matches 2580..2779 run scoreboard players set spawn_act settings 10
execute if score spawn settings matches 0 if score #spawn_roll settings matches 2780..2859 run function practice:level/load_random_high_cage
execute if score spawn settings matches 0 if score #spawn_roll settings matches 2860..6429 run scoreboard players set spawn_act settings 0
execute if score spawn settings matches 0 if score #spawn_roll settings matches 6430..9999 run scoreboard players set spawn_act settings 1

# uniformly random - flat roll over every spawn, ignoring how common it is
execute if score spawn settings matches 1 run scoreboard players set mod rng 16
execute if score spawn settings matches 1 run function practice:random/generate
execute if score spawn settings matches 1 run scoreboard players operation spawn_act settings = r rng
execute if score spawn settings matches 1 if score spawn_act settings matches 2..15 run scoreboard players add spawn_act settings 1

execute if score spawn_act settings matches 2 run function practice:level/load_random_cage

# populate structure block - one structure covers a range of depths, extend_buried
# then digs it out to the exact height
execute if score spawn_act settings matches 0 run data modify block 100 42 0 name set value "practice:spawns/open"
execute if score spawn_act settings matches 1 run data modify block 100 42 0 name set value "practice:spawns/overhang"
execute if score spawn_act settings matches 3..5 run data modify block 100 42 0 name set value "practice:spawns/cage_3"
execute if score spawn_act settings matches 6 run data modify block 100 42 0 name set value "practice:spawns/cage_4"
execute if score spawn_act settings matches 7 run data modify block 100 42 0 name set value "practice:spawns/cage_5"
execute if score spawn_act settings matches 8 run data modify block 100 42 0 name set value "practice:spawns/cage_6"
execute if score spawn_act settings matches 9..16 run data modify block 100 42 0 name set value "practice:spawns/cage_7"

setblock 100 41 0 minecraft:redstone_block
fill 100 41 0 100 42 0 air
function practice:level/extend_buried
