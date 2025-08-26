execute if entity @e[tag=nice_mobs.base,distance=..128] run return run tag @s add nice_mobs.exclude_spawning
execute if predicate nice_mobs:percentages/90 run return run tag @s add nice_mobs.exclude_spawning
execute if data storage eden:settings nice_mobs.spawning{bloomer:"disabled"} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:summon/bloomer
tp ~ -200 ~
kill @s