# end this function if the mob is not a sheep
execute unless entity @s[type=minecraft:sheep] run return 0

execute if score @s mobnames.biome matches 1 run data modify storage mobnames:name list set value [["Mr. ", "Ms. "],["Fresh", "Wink", "Green", "Happy", "Link", "Gold", "Parr", "Hala"],[" Kingston", " by the Sea", " Fletcher", " Smith", " Cheese", " the Handsome", ", Cringefail King", "...and nothing else."]]

execute unless data storage mobnames:name list if score @s mobnames.dimension matches 0 run data modify storage mobnames:name list set value [["Mr. ", "Ms. "],["Fresh", "Wink", "Green", "Happy", "Link", "Gold", "Parr", "Hala"],[" Kingston", " by the Sea", " Fletcher", " Smith", " Cheese", " the Handsome", ", Cringefail King", "...and nothing else."]]