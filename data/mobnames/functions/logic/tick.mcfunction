# run the name function as any mobs that should get a name, but do not yet have a name
execute as @e[type=#mobnames:named_mobs,tag=!mobnames.named] at @s run function mobnames:logic/give_name

# run the persistence function as any mobs that shouldnt despawn, but are not yet tagged
execute as @e[type=#mobnames:shouldnt_despawn,tag=!mobnames.persistent] at @s run function mobnames:logic/set_persistence