# assign the mob scores based on their biome and dimension
# adult mobs are assigned their biome by location, baby mobs inherit their biome from the nearest adult mob
execute store result score #age mobnames.temp run data get entity @s Age
execute if score #age mobnames.temp matches 0 run function mobnames:logic/determine_scores
execute if score #age mobnames.temp matches ..-1 run function mobnames:logic/inherit_scores


# load name lists into data storage based on mob type
function #mobnames:named_mobs

# start loop function to choose random names from storage
function mobnames:logic/give_name_loop

# concatenate the randomly chosen names
function mobnames:logic/concatenate

# set this mob's name to the concatenated name
data modify entity @s CustomName set from storage mobnames:name out

# clean up scoreboards and storages that were used
scoreboard players reset #age mobnames.temp
scoreboard players reset #list_size mobnames.temp
scoreboard players reset #list_index mobnames.temp
data remove storage mobnames:name list
data remove storage mobnames:name in
data remove storage mobnames:name out

# add named tag to mob, so it doesnt get renamed
tag @s add mobnames.named