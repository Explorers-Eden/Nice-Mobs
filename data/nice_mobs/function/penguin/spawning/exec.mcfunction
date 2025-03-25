execute if predicate eden:percentages/75 run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:spawn/penguin
spreadplayers ~ ~ 10 10 false @n[type=pig,tag=nice_mobs.penguin.vehicle,distance=..4]

execute if predicate eden:percentages/80 run return run tag @s add nice_mobs.exclude_spawning
function nice_mobs:spawn/penguin
spreadplayers ~ ~ 10 10 false @n[type=pig,tag=nice_mobs.penguin.vehicle,distance=..4]

execute if predicate eden:percentages/85 run return run tag @s add nice_mobs.exclude_spawning
function nice_mobs:spawn/penguin
spreadplayers ~ ~ 10 10 false @n[type=pig,tag=nice_mobs.penguin.vehicle,distance=..4]

tag @s add nice_mobs.exclude_spawning