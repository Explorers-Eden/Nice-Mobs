schedule function nice_mobs:glare/run 5t

#cancel further functions if no glare vehicle exists
execute unless entity @e[type=item_display,tag=aj.glare.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.glare.root,predicate=!nice_mobs:entity/has_pillager_vehicle] at @s run function nice_mobs:glare/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.glare.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=pillager,tag=nice_mobs.glare.vehicle] at @s run function nice_mobs:glare/exec_as_base