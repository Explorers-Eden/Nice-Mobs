schedule function nice_mobs:hedgehog/run 5t

#cancel further functions if no hedgehog vehicle exists
execute unless entity @e[type=item_display,tag=aj.hedgehog.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.hedgehog.root,predicate=!nice_mobs:entity/has_pig_vehicle] at @s run function nice_mobs:hedgehog/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.hedgehog.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.hedgehog.vehicle] at @s run function nice_mobs:hedgehog/exec_as_base