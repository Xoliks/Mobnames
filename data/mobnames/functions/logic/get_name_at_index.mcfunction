# loop to remove names from the front of the list until the randomly selected name is at the front

# remove the first element in the list, and update the index
data remove storage mobnames:name list[0].[0]
scoreboard players remove #list_index mobnames.temp 1

# run this function again the name was found
execute unless score #list_index mobnames.temp matches ..0 run function mobnames:logic/get_name_at_index