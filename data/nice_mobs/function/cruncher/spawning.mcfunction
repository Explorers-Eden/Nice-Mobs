execute if predicate eden:percentages/75 run return run tag @s add nice_mobs.exclude_spawning
execute unless biome ~ ~ ~ #eden:cruncher_spawnable run return run tag @s add nice_mobs.exclude_spawning
execute unless data entity @s {"Age": 0} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:spawn/cruncher
spreadplayers ~ ~ 25 25 false @n[type=pig,tag=nice_mobs.cruncher.vehicle,distance=..4]

tag @s add nice_mobs.exclude_spawning