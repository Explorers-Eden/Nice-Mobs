execute if entity @e[tag=nice_mobs.vulture.vehicle,distance=..64] run return fail
execute if data storage eden:settings nice_mobs.spawning{vulture:"disabled"} run return fail
execute unless predicate eden:entity/can_spawn_vulture run return fail

execute positioned ~ ~25 ~5 run function nice_mobs:summon/vulture
execute positioned ~ ~25 ~-5 if predicate eden:percentages/85 run function nice_mobs:summon/vulture
execute positioned ~5 ~25 ~ if predicate eden:percentages/40 run function nice_mobs:summon/vulture
execute positioned ~-5 ~25 ~ if predicate eden:percentages/20 run function nice_mobs:summon/vulture

scoreboard players set @a nice_mobs.player.vulture_timer 0