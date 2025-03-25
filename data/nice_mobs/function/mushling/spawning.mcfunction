execute if predicate eden:percentages/75 run return run tag @s add nice_mobs.exclude_spawning
execute unless data entity @s {"Age": 0} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:spawn/mushling
spreadplayers ~ ~ 25 25 false @n[type=pig,tag=nice_mobs.mushling.vehicle,distance=..4]

execute if predicate eden:percentages/50 run return run tag @s add nice_mobs.exclude_spawning
function nice_mobs:spawn/mushling
spreadplayers ~ ~ 25 25 false @n[type=pig,tag=nice_mobs.mushling.vehicle,distance=..4]

tag @s add nice_mobs.exclude_spawning