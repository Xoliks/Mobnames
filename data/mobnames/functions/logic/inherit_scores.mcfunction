# takes the scores from the nearest named mob and copies them to this mob
execute store result score @s mobnames.biome as @e[tag=mobnames.named,limit=1,sort=nearest] run scoreboard players get @s mobnames.biome
execute store result score @s mobnames.dimension as @e[tag=mobnames.named,limit=1,sort=nearest] run scoreboard players get @s mobnames.dimension