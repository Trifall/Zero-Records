# "base" or "base+plus" off the table load sets up, anything past it is Other
data modify storage zeroboard:records current.type set value "Other"
data remove storage zeroboard:records work.type_row
execute if score explosives stats matches 0 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[0]
execute if score explosives stats matches 1 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[1]
execute if score explosives stats matches 2 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[2]
execute if score explosives stats matches 3 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[3]
execute if score explosives stats matches 4 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[4]
execute if score explosives stats matches 5 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[5]
execute if score explosives stats matches 6 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[6]
execute if score explosives stats matches 7 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[7]
execute if score explosives stats matches 8 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[8]
execute if score explosives stats matches 9 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[9]
execute if score explosives stats matches 10 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[10]
execute if score explosives stats matches 11 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[11]
execute if score explosives stats matches 12 run data modify storage zeroboard:records work.type_row set from storage zeroboard:records types[12]
execute if score plus_1 stats matches 0 if data storage zeroboard:records work.type_row run data modify storage zeroboard:records current.type set from storage zeroboard:records work.type_row[0]
execute if score plus_1 stats matches 1 if data storage zeroboard:records work.type_row run data modify storage zeroboard:records current.type set from storage zeroboard:records work.type_row[1]
execute if score plus_1 stats matches 2 if data storage zeroboard:records work.type_row run data modify storage zeroboard:records current.type set from storage zeroboard:records work.type_row[2]
execute if score plus_1 stats matches 3 if data storage zeroboard:records work.type_row run data modify storage zeroboard:records current.type set from storage zeroboard:records work.type_row[3]
execute if score plus_1 stats matches 4 if data storage zeroboard:records work.type_row run data modify storage zeroboard:records current.type set from storage zeroboard:records work.type_row[4]
execute if score plus_1 stats matches 5 if data storage zeroboard:records work.type_row run data modify storage zeroboard:records current.type set from storage zeroboard:records work.type_row[5]
data remove storage zeroboard:records work.type_row
