execute if entity @e[tag=nice_mobs.base,distance=..96] run return run tag @s add nice_mobs.exclude_spawning
execute if predicate eden:percentages/95 run return run tag @s add nice_mobs.exclude_spawning
execute unless data entity @s {"Age": 0} run return run tag @s add nice_mobs.exclude_spawning
execute unless biome ~ ~ ~ #eden:dirt_golem_spawnable run return run tag @s add nice_mobs.exclude_spawning
execute if data storage eden:gamerule nice_mobs.spawning{dirt_golem:0b} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:summon/dirt_golem
spreadplayers ~ ~ 25 25 false @n[type=villager,tag=nice_mobs.dirt_golem.vehicle,distance=..4]

tag @s add nice_mobs.exclude_spawning