# end this function if the mob is not a sheep
execute unless entity @s[type=minecraft:sheep] run return 0

# biome tests to determine which namelist to load
execute if score @s mobnames.biome matches 1 run data modify storage mobnames:name list set value [["Mossy", "Fern", "Thistle", "Acorn", "Barkley", "Clover", "Pinecone", "Birch", "Squirrel", "Bramble"]]
execute if score @s mobnames.biome matches 2 run data modify storage mobnames:name list set value [["Toadie", "Spore", "Fungi", "Truffle", "Puffball", "Buttoncap", "Myca", "Shroomie", "Gill", "Morchella"]]
execute if score @s mobnames.biome matches 3 run data modify storage mobnames:name list set value [["Mango", "Zazu", "Chia", "Bongo", "Papaya", "Vinestra", "Banamba", "Gecko", "Rumba", "Tiki"]]
execute if score @s mobnames.biome matches 4 run data modify storage mobnames:name list set value [["Boggy", "Swampy", "Lilypad", "Froggit", "Murk", "Reed", "Croaky", "Sedge", "Muddle", "Wader",]]
execute if score @s mobnames.biome matches 5 run data modify storage mobnames:name list set value [["Buttercup", "Barley", "Sunny", "Wheatley", "Poppy", "Dandy", "Meadow", "Rosie", "Marigold", "Haybale"]]
execute if score @s mobnames.biome matches 6 run data modify storage mobnames:name list set value [["Coral", "Bubbles", "Drift", "Sandy", "Pebble", "Splash", "Barnacle", "Tide", "Salty", "Gulliver"]]
execute if score @s mobnames.biome matches 7 run data modify storage mobnames:name list set value [["Snowball", "Blizzard", "Frosty", "Icelyn", "Chilly", "Tundra", "Sleety", "Flurry", "Glacia", "Shiver"]]
execute if score @s mobnames.biome matches 8 run data modify storage mobnames:name list set value [["Dusty", "Cactus", "Mirage", "Sirocco", "Dune", "Ember", "Sandy", "Sunflare", "Scorch", "Pebblin"]]
execute if score @s mobnames.biome matches 9 run data modify storage mobnames:name list set value [["Echo", "Stoney", "Shade", "Grotto", "Emberdeep", "Craggy", "Obsidian", "Glint", "Dustbit", "Murk"]]
execute if score @s mobnames.biome matches 10 run data modify storage mobnames:name list set value [["Rocky", "Cliff", "Summit", "Breezy", "Alpine", "Avalanche", "Boulder", "Frosthorn", "Talon", "Skye"]]


# dimension tests fallback in case all biome tests fail
# the scores represent the dimension the mob is from. -1 is the nether, 0 is the overworld, and 1 is the end
execute unless data storage mobnames:name list if score @s mobnames.dimension matches -1 run data modify storage mobnames:name list set value [[ "Magma", "Cinder", "Ember", "Ashen", "Lavafluff", "Pyra", "Char", "Scoria", "Volca", "Molten", "Burnie", "Igni", "Smoulder", "Crag", "Inferno", "Basalto", "Fumerra", "Sooty", "Quake", "Singe"]]
execute unless data storage mobnames:name list if score @s mobnames.dimension matches 0 run data modify storage mobnames:name list set value [["Woolly", "Lamb Chop", "Lady BaaBaa", "Fleece Witherspoon", "Wiggles", "Snugglebug", "Pompom", "MooMoo", "Baa-rack Obama", "Woolverine"]]
execute unless data storage mobnames:name list if score @s mobnames.dimension matches 1 run data modify storage mobnames:name list set value [["Nimbus", "Zephy", "Cumulus", "Drift", "Skye", "Haze", "Glimmer", "Altia", "Aero", "Cloudkin", "Floof", "Windle", "Cirra", "Daydream", "Gale", "Fluffernimbus", "Twirl", "Aether", "Lofty", "Stardrift"]]