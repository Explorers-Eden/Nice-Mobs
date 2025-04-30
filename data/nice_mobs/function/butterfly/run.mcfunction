schedule function nice_mobs:butterfly/run 5t

#cancel further functions if no butterfly vehicle exists
execute unless entity @e[type=item_display,tag=aj.butterfly.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.butterfly.root,predicate=!eden:entity/has_bee_vehicle] at @s run function nice_mobs:butterfly/behavior/death

#run functions as base entity
execute as @e[type=bee,tag=nice_mobs.butterfly.vehicle] at @s run function nice_mobs:butterfly/exec_as_base