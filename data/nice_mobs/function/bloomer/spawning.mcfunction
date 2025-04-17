execute if entity @e[tag=nice_mobs.base,distance=..64] run return run tag @s add nice_mobs.exclude_spawning
execute if predicate eden:percentages/90 run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:spawn/bloomer
tp ~ -200 ~
kill @s