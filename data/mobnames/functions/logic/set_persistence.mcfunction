
# change PersistenceRequired so mobs dont despawn
execute if entity @s[type=#mobnames:shouldnt_despawn] run data modify entity @s PersistenceRequired set value true

# tag this mob so it's not selected again
tag @s add mobnames.persistent