execute as @e[type=minecraft:iron_golem,tag=!nice_mobs.base,tag=!nice_mobs.exclude_spawning] at @s if data entity @s {"PlayerCreated": 0b} run function nice_mobs:copper_golem/spawning/exec
