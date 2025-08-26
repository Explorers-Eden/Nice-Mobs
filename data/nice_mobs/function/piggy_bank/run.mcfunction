schedule function nice_mobs:piggy_bank/run 5t

#cancel further functions if no cruncher vehicle exists
execute unless entity @e[type=item_display,tag=aj.treasure_chest.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.treasure_chest.root,predicate=!nice_mobs:entity/has_pig_vehicle] at @s run function nice_mobs:piggy_bank/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.treasure_chest.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.piggy_bank.vehicle] at @s run function nice_mobs:piggy_bank/exec_as_base