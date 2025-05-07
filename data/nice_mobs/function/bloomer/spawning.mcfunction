execute if entity @e[tag=nice_mobs.base,distance=..128] run return run tag @s add nice_mobs.exclude_spawning
execute if predicate eden:percentages/90 run return run tag @s add nice_mobs.exclude_spawning
execute if data storage eden:gamerule nice_mobs.spawning{bloomer:0b} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:summon/bloomer
tp ~ -200 ~
kill @s