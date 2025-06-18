schedule function nice_mobs:pufftail/run 5t

#cancel further functions if no pufftail vehicle exists
execute unless entity @e[type=item_display,tag=aj.pufftail.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.pufftail.root,predicate=!eden:entity/has_vex_vehicle] at @s run function nice_mobs:pufftail/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.pufftail.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=vex,tag=nice_mobs.pufftail.vehicle] at @s run function nice_mobs:pufftail/exec_as_base