particle minecraft:poof ~ ~.3 ~ .5 .5 .5 0.05 50
playsound minecraft:entity.iron_golem.repair neutral @a ~ ~ ~ .4 2
execute if data storage eden:settings nice_mobs.spawning{copper_golem:"enabled"} run function nice_mobs:summon/copper_golem
advancement grant @a[distance=..16] only nice_mobs:adventure/copper_golem_spawned
data modify entity @n[type=iron_golem,tag=nice_mobs.copper_golem.vehicle,distance=..2] PlayerCreated set value 1b
execute on vehicle run kill @s
kill @s