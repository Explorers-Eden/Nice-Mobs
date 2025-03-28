schedule function nice_mobs:nautilus_crab/run 5t

#cancel further functions if no nautilus_crab vehicle exists
execute unless entity @e[type=item_display,tag=aj.nautilus_crab.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.nautilus_crab.root,predicate=!eden:entity/has_pig_vehicle] at @s run function nice_mobs:nautilus_crab/behavior/death

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.nautilus_crab.vehicle] at @s run function nice_mobs:nautilus_crab/exec_as_base