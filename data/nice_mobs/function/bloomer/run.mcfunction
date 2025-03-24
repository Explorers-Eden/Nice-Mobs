schedule function nice_mobs:bloomer/run 5t

#cancel further functions if no bloomer vehicle exists
execute unless entity @e[type=item_display,tag=aj.bloomer.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.bloomer.root,predicate=!eden:entity/has_creeper_vehicle,scores={nice_mobs.entity.action=0}] at @s run function nice_mobs:bloomer/behavior/death
execute as @e[type=item_display,tag=aj.bloomer.root,predicate=!eden:entity/has_creeper_vehicle,scores={nice_mobs.entity.action=1}] at @s run function nice_mobs:bloomer/behavior/exploded

#run functions as base entity
execute as @e[type=creeper,tag=nice_mobs.bloomer.vehicle] at @s run function nice_mobs:bloomer/exec_as_base