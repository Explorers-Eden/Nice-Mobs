schedule function nice_mobs:cruncher/run 5t

#cancel further functions if no cruncher vehicle exists
execute unless entity @e[type=item_display,tag=aj.cruncher.root] run return fail

#init eating
execute as @e[type=item] at @s if items entity @s container.* #eden:ores if entity @e[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!is_eating,distance=..1,scores={nice_mobs.cruncher.total_ore_count=..1728}] run function nice_mobs:cruncher/behavior/eating/init

#on death
execute as @e[type=item_display,tag=aj.cruncher.root,predicate=!eden:entity/has_pig_vehicle] at @s run function nice_mobs:cruncher/behavior/death

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.cruncher.vehicle] at @s run function nice_mobs:cruncher/exec_as_base