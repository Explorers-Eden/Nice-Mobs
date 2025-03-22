schedule function nice_mobs:rat/run 5t

#cancel further functions if no rat vehicle exists
execute unless entity @e[type=item_display,tag=aj.rat.root] run return fail

#init eating
execute as @e[type=item,predicate=eden:entity/is_rotten_flesh_item] at @s if entity @e[type=pig,tag=nice_mobs.rat.vehicle,tag=!is_eating,distance=..1] run function nice_mobs:rat/behavior/eating/init

#on death
execute as @e[type=item_display,tag=aj.rat.root,predicate=!eden:entity/has_pig_vehicle] at @s run function nice_mobs:rat/behavior/death

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.rat.vehicle] at @s run function nice_mobs:rat/exec_as_base