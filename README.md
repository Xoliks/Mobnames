# Mobnames Datapack
Credit: Xoliks
This pack was created for a commission. It is intended to be used to give specific mobs randomly chosen names. This pack is highly customizable; details on how to customize it are below

**Defining named mobs**
This is the most difficult change to make, because it requires editing multiple files, and creating a new file.
1. Add the mob's Id to `Mobnames\data\mobnames\tags\entity_types\named_mobs.json`. Example: `"minecraft:villager"`
2. create a new .mcfunction file in `Mobnames\data\mobnames\functions\name_lists` the filename should reflect the mob's type. Example: `villager.mcfunction`
3. add the filename of the newly created file into `Mobnames\data\mobnames\tags\functions\named_mobs.json`. Example: `"mobnames:name_lists/villager"`
4. copy & paste the following into the newly created .mcfunction file:
```
# end this function if the mob is not the correct type
execute unless entity @s[type=<mob_id>] run return 0

# the score value refrences the biome group, the namelist will be applied if the mob belongs to that boime group
execute if score @s mobnames.biome matches 1 run data modify storage mobnames:name list set value [[]]
execute if score @s mobnames.biome matches 2 run data modify storage mobnames:name list set value [[]]
execute if score @s mobnames.biome matches 3 run data modify storage mobnames:name list set value [[]]
execute if score @s mobnames.biome matches 4 run data modify storage mobnames:name list set value [[]]
execute if score @s mobnames.biome matches 5 run data modify storage mobnames:name list set value [[]]
execute if score @s mobnames.biome matches 6 run data modify storage mobnames:name list set value [[]]
execute if score @s mobnames.biome matches 7 run data modify storage mobnames:name list set value [[]]
execute if score @s mobnames.biome matches 8 run data modify storage mobnames:name list set value [[]]
execute if score @s mobnames.biome matches 9 run data modify storage mobnames:name list set value [[]]
execute if score @s mobnames.biome matches 10 run data modify storage mobnames:name list set value [[]]

# fallback names can be defined based on dimension, these lists are only used if there is no defined namelist for the biome group
# the scores represent the dimension the mob is from. -1 is the nether, 0 is the overworld, and 1 is the end
execute unless data storage mobnames:name list if score @s mobnames.biome matches -1 run data modify storage mobnames:name list set value [[]]
execute unless data storage mobnames:name list if score @s mobnames.biome matches 0 run data modify storage mobnames:name list set value [[]]
execute unless data storage mobnames:name list if score @s mobnames.biome matches 1 run data modify storage mobnames:name list set value [[]]
```
5. replace the `<mob_id>` in line 2, with the corresponding mob id. Example: `minecraft:villager`

**Defining namelists**
- A namelist is defined as a list of sublists in NBT format, each sublist will have one element from it chosen at random. the elements will be combined together to make up a full name
   For example, a namelist like: `[["Mr. ", "Ms. "],["Fresh", "Wink"],[" Kingston", " Fletcher"]]` could generate the name "Mr. Wink Fletcher".

1. Navigate to `Mobnames\data\mobnames\functions\name_lists`, in the mob's corresponding file.
- a set of tests can be conducted before loading each namelist, such as a biome group test, or a dimension test. see the above codeblock for an example
- additional tests and namelists can be added beyond the template above
2. Define the test you would like to perform before loading the namelist, use the tests from the template as examples
3. place the namelist after the test
  
- Namelists can contain up to 100 separate sublists
- sublists have no limit on the number of entries

**Defining persistent mobs** (persistent mobs wont ever despawn)
1. Add the mob's Id to `Mobnames\data\mobnames\tags\entity_types\shouldnt_despawn.json`. Example: `"minecraft:villager"`

**Defining Biome Groups**
- 11 biome groups come predefined in the following categories: Forest, Mushroom, Jungle, Wetland, Fields, Ocean, Snowy, Desert, Cave, Mountain, Other
- 64 extra biome groups exist, but have no biomes defined
1. Navigate to `Mobnames\data\mobnames\tags\worldgen\biome` and choose the biome group you would like to modify
2. Add or remove biome Id's from the list. Example: `"minecraft:plains"`

- if a biome id is in multiple groups, then the highest group number will take priority

**Adding additional biome groups**
1. Navigate to `Mobnames\data\mobnames\tags\worldgen\biome`
2. create a new `group_<number>.json` file, the number should be one above the existing final biome group
3. copy the contents of one of the existing biome groups to use as a template
4. open `Mobnames\data\mobnames\functions\logic\determine_scores.mcfunction`
5. add a new line at the bottom of the file with a test for the biome group, and an assignment of the corresponding score
