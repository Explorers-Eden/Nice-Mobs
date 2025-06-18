schedule function nice_mobs:dirt_golem/run 5t

#cancel further functions if no dirt_golem vehicle exists
execute unless entity @e[type=item_display,tag=aj.dirt_golem.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.dirt_golem.root,predicate=!eden:entity/has_villager_vehicle] at @s run function nice_mobs:dirt_golem/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.dirt_golem.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=villager,tag=nice_mobs.dirt_golem.vehicle] at @s run function nice_mobs:dirt_golem/exec_as_base