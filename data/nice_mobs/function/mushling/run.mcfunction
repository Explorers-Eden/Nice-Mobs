schedule function nice_mobs:mushling/run 5t

#cancel further functions if no mushling vehicle exists
execute unless entity @e[type=item_display,tag=aj.mushling.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.mushling.root,predicate=!nice_mobs:entity/has_pig_vehicle] at @s run function nice_mobs:mushling/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.mushling.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.mushling.vehicle] at @s run function nice_mobs:mushling/exec_as_base