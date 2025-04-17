execute if entity @e[tag=nice_mobs.base,distance=..64] run return run tag @s add nice_mobs.exclude_spawning
execute if predicate eden:percentages/75 run return run tag @s add nice_mobs.exclude_spawning
execute unless biome ~ ~ ~ #eden:snail_spawnable run return run tag @s add nice_mobs.exclude_spawning
execute unless data entity @s {"Age": 0} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:spawn/snail
spreadplayers ~ ~ 25 25 false @n[type=pig,tag=nice_mobs.snail.vehicle,distance=..4]

tag @s add nice_mobs.exclude_spawning