schedule function nice_mobs:glare/run 5t

#cancel further functions if no glare vehicle exists
execute unless entity @e[type=item_display,tag=aj.glare.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.glare.root,predicate=!eden:entity/has_pillager_vehicle] at @s run function nice_mobs:glare/behavior/death

#run functions as base entity
execute as @e[type=pillager,tag=nice_mobs.glare.vehicle] at @s run function nice_mobs:glare/exec_as_base