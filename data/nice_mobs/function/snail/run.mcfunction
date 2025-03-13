schedule function nice_mobs:snail/run 5t

#cancel further functions if no snail vehicle exists
execute unless entity @e[type=item_display,tag=aj.snail.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.snail.root,predicate=!eden:entity/has_pig_vehicle] at @s run function nice_mobs:snail/behavior/death

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.snail.vehicle] at @s run function nice_mobs:snail/exec_as_base