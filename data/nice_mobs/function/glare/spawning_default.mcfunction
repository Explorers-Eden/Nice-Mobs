execute if entity @e[tag=nice_mobs.base,distance=..64] run return run tag @s add nice_mobs.exclude_spawning
execute if predicate eden:percentages/75 run return run tag @s add nice_mobs.exclude_spawning
execute unless biome ~ ~ ~ minecraft:lush_caves run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:spawn/glare/moss
#spreadplayers ~ ~ 25 25 false @n[type=pig,tag=nice_mobs.snail.vehicle,distance=..4]

tag @s add nice_mobs.exclude_spawning