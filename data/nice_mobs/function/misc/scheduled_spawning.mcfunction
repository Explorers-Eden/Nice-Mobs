schedule function nice_mobs:misc/scheduled_spawning 4s

#at mob spawning
execute as @e[type=minecraft:bat,tag=!nice_mobs.base,tag=!nice_mobs.exclude_spawning] at @s run function nice_mobs:glare/spawning_default
execute as @e[type=minecraft:mooshroom,tag=!nice_mobs.base,tag=!nice_mobs.exclude_spawning] at @s run function nice_mobs:mushling/spawning
execute as @e[type=minecraft:polar_bear,tag=!nice_mobs.base,tag=!nice_mobs.exclude_spawning] at @s run function nice_mobs:penguin/spawning
execute as @e[type=minecraft:cow,tag=!nice_mobs.base,tag=!nice_mobs.exclude_spawning] at @s run function nice_mobs:snail/spawning
execute as @e[type=minecraft:chicken,tag=!nice_mobs.base,tag=!nice_mobs.exclude_spawning] at @s run function nice_mobs:dirt_golem/spawning
execute as @e[type=minecraft:pig,tag=!nice_mobs.base,tag=!nice_mobs.exclude_spawning] at @s run function nice_mobs:rat/spawning
execute as @e[type=minecraft:turtle,tag=!nice_mobs.base,tag=!nice_mobs.exclude_spawning] at @s run function nice_mobs:nautilus_crab/spawning
execute as @e[type=minecraft:armadillo,tag=!nice_mobs.base,tag=!nice_mobs.exclude_spawning] at @s run function nice_mobs:cruncher/spawning

#at marker spawning
execute as @e[type=marker,tag=nice_mobs.spawner] at @s run return run function nice_mobs:misc/at_marker_spawning
