execute if entity @e[tag=nice_mobs.base,distance=..96] run return run tag @s add nice_mobs.exclude_spawning
execute if predicate eden:percentages/85 run return run tag @s add nice_mobs.exclude_spawning
execute unless biome ~ ~ ~ #eden:cruncher_spawnable run return run tag @s add nice_mobs.exclude_spawning
execute unless data entity @s {"Age": 0} run return run tag @s add nice_mobs.exclude_spawning
execute if data storage eden:gamerule nice_mobs.spawning{cruncher:0b} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:summon/cruncher
spreadplayers ~ ~ 25 25 false @n[type=pig,tag=nice_mobs.cruncher.vehicle,distance=..4]

tag @s add nice_mobs.exclude_spawning