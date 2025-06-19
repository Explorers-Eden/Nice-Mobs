particle minecraft:poof ~ ~.3 ~ .5 .5 .5 0.05 50
playsound minecraft:entity.glow_squid.ambient neutral @a ~ ~ ~ .6 1.5

advancement grant @a[distance=..16] only nice_mobs:adventure/jellyfish_spawned

execute if data storage eden:se nice_mobs.spawning{jellyfish:"enabled"} run function nice_mobs:summon/jellyfish

execute on vehicle run kill @s
kill @s