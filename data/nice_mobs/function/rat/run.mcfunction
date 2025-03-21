schedule function nice_mobs:rat/run 5t

#cancel further functions if no rat vehicle exists
execute unless entity @e[type=item_display,tag=aj.rat.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.rat.root,predicate=!eden:entity/has_pig_vehicle] at @s run function nice_mobs:rat/behavior/death

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.rat.vehicle] at @s run function nice_mobs:rat/exec_as_base