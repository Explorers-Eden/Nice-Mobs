execute if predicate eden:percentages/90 run return run tag @s add nice_mobs.exclude_spawning
execute unless data entity @s {"Age": 0} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:spawn/rat
spreadplayers ~ ~ 25 25 false @n[type=pig,tag=nice_mobs.rat.vehicle,distance=..4]

execute if predicate eden:percentages/90 run return run tag @s add nice_mobs.exclude_spawning
function nice_mobs:spawn/rat
spreadplayers ~ ~ 25 25 false @n[type=pig,tag=nice_mobs.rat.vehicle,distance=..4]

tag @s add nice_mobs.exclude_spawning