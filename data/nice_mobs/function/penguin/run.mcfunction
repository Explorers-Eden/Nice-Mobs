schedule function nice_mobs:penguin/run 5t

#cancel further functions if no penguin vehicle exists
execute unless entity @e[type=item_display,tag=aj.penguin.root] run return fail

#init bartering
execute as @e[type=item,predicate=nice_mobs:entity/is_cod_item] at @s if entity @e[type=chicken,tag=nice_mobs.penguin.vehicle,distance=..1] run function nice_mobs:penguin/behavior/bartering/init

#on death
execute as @e[type=item_display,tag=aj.penguin.root,predicate=!nice_mobs:entity/has_chicken_vehicle] at @s run function nice_mobs:penguin/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.penguin.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=chicken,tag=nice_mobs.penguin.vehicle] at @s run function nice_mobs:penguin/exec_as_base