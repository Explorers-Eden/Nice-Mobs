schedule function nice_mobs:remove_copper_golem 10s

execute as @e[type=minecraft:item_display,tag=aj.copper_golem.root] on passengers run kill @s
execute as @e[type=minecraft:item_display,tag=aj.copper_golem.root] run kill @s

execute as @e[type=iron_golem,tag=nice_mobs.copper_golem.vehicle] at @s run function nice_mobs:misc/kill