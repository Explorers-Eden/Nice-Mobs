execute if entity @e[tag=nice_mobs.base,distance=..64] run return run tag @s add nice_mobs.exclude_spawning
execute if predicate eden:percentages/90 run return run tag @s add nice_mobs.exclude_spawning
execute unless data entity @s {"PlayerCreated": 0b} run return run tag @s add nice_mobs.exclude_spawning

function nice_mobs:spawn/copper_golem
tp ~ -200 ~
kill @s