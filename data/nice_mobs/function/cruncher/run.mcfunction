schedule function nice_mobs:cruncher/run 5t

#cancel further functions if no cruncher vehicle exists
execute unless entity @e[type=item_display,tag=aj.cruncher.root] run return fail

#init eating
execute as @e[type=item] at @s if items entity @s container.* #nice_mobs:ores if entity @e[type=pig,tag=nice_mobs.cruncher.vehicle,distance=..1,scores={nice_mobs.cruncher.ores_holding=..1727}] run function nice_mobs:cruncher/behavior/eating/init

#on death
execute as @e[type=item_display,tag=aj.cruncher.root,predicate=!nice_mobs:entity/has_pig_vehicle] at @s run function nice_mobs:cruncher/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.cruncher.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.cruncher.vehicle] at @s run function nice_mobs:cruncher/exec_as_base