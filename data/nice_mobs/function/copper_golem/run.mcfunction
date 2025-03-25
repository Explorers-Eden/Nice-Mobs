schedule function nice_mobs:copper_golem/run 5t

#replace percentage of villager spawned iron golems with copper golems
execute as @e[type=minecraft:iron_golem,tag=!nice_mobs.base,tag=!nice_mobs.exclude_spawning] at @s run function nice_mobs:copper_golem/spawning

#cancel further functions if no copper_golem vehicle exists
execute unless entity @e[type=item_display,tag=aj.copper_golem.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.copper_golem.root,predicate=!eden:entity/has_iron_golem_vehicle] at @s run function nice_mobs:copper_golem/behavior/death

#run functions as base entity
execute as @e[type=iron_golem,tag=nice_mobs.copper_golem.vehicle] at @s run function nice_mobs:copper_golem/exec_as_base