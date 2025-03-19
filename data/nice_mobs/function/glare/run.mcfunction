schedule function nice_mobs:glare/run 5t

#cancel further functions if no glare vehicle exists
execute unless entity @e[type=item_display,tag=aj.glare.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.glare.root,predicate=!eden:entity/has_creeper_vehicle] at @s run function nice_mobs:glare/behavior/death

#run functions as base entity
execute as @e[type=creeper,tag=nice_mobs.glare.vehicle] at @s run function nice_mobs:glare/exec_as_base