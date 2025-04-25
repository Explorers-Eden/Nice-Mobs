particle minecraft:poof ~ ~.3 ~ .5 .5 .5 0.05 50
playsound minecraft:entity.glow_squid.ambient neutral @a ~ ~ ~ .6 1.5

advancement grant @a[distance=..16] only nice_mobs:adventure/jellyfish_spawned

function nice_mobs:spawn/jellyfish

execute on vehicle run kill @s
kill @s