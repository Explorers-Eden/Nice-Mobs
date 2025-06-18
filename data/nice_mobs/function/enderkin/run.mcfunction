schedule function nice_mobs:enderkin/run 5t

#cancel further functions if no enderkin vehicle exists
execute unless entity @e[type=item_display,tag=aj.enderkin.root] run return fail

#init bartering
execute as @e[type=item,predicate=eden:entity/is_diamond_item] at @s if entity @e[type=pig,tag=nice_mobs.enderkin.vehicle,distance=..1] run function nice_mobs:enderkin/behavior/bartering/init

#on death
execute as @e[type=item_display,tag=aj.enderkin.root,predicate=!eden:entity/has_pig_vehicle] at @s run function nice_mobs:enderkin/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.enderkin.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.enderkin.vehicle] at @s run function nice_mobs:enderkin/exec_as_base