execute if entity @e[tag=nice_mobs.base,distance=..128] run return run tag @s add nice_mobs.exclude_spawning
execute if predicate eden:percentages/75 run return run tag @s add nice_mobs.exclude_spawning
execute if data storage eden:gamerule nice_mobs.spawning{penguin:0b} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:summon/penguin
spreadplayers ~ ~ 25 25 false @n[type=chicken,tag=nice_mobs.penguin.vehicle,distance=..4]

execute if predicate eden:percentages/80 run return run tag @s add nice_mobs.exclude_spawning
function nice_mobs:summon/penguin
spreadplayers ~ ~ 25 25 false @n[type=chicken,tag=nice_mobs.penguin.vehicle,distance=..4]

execute if predicate eden:percentages/85 run return run tag @s add nice_mobs.exclude_spawning
function nice_mobs:summon/penguin
spreadplayers ~ ~ 25 25 false @n[type=chicken,tag=nice_mobs.penguin.vehicle,distance=..4]

tag @s add nice_mobs.exclude_spawning