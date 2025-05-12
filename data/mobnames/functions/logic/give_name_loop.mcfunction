# pick a random list index
execute store result score #list_size mobnames.temp run data get storage mobnames:name list[0]
scoreboard players remove #list_size mobnames.temp 1
execute store result score #list_index mobnames.temp run loot spawn 0 -100 0 loot mobnames:rng

# put the randomly chose name into the concatenation list
# run the index loop unless the current index is 0
execute unless score #list_index mobnames.temp matches 0 run function mobnames:logic/get_name_at_index
data modify storage mobnames:name in append from storage mobnames:name list[0].[0]

# move on to the next namelist
data remove storage mobnames:name list[0]

# run this function again unless there are no more names to choose
execute if data storage mobnames:name list[0] run function mobnames:logic/give_name_loop