execute if entity @e[tag=nice_mobs.base,distance=..96] run return run tag @s add nice_mobs.exclude_spawning
execute if predicate eden:percentages/75 run return run tag @s add nice_mobs.exclude_spawning
execute unless data entity @s {"Age": 0} run return run tag @s add nice_mobs.exclude_spawning
execute unless predicate eden:location/stepping_on_sand run return run tag @s add nice_mobs.exclude_spawning
execute if data storage eden:gamerule nice_mobs.spawning{nautilus_crab:0b} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:spawn/nautilus_crab
spreadplayers ~ ~ 15 15 false @n[type=pig,tag=nice_mobs.mushling.vehicle,distance=..4]

execute if predicate eden:percentages/75 run return run tag @s add nice_mobs.exclude_spawning
function nice_mobs:spawn/nautilus_crab
spreadplayers ~ ~ 15 15 false @n[type=pig,tag=nice_mobs.mushling.vehicle,distance=..4]

tag @s add nice_mobs.exclude_spawning