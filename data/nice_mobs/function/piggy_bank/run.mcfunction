schedule function nice_mobs:piggy_bank/run 5t

#cancel further functions if no cruncher vehicle exists
execute unless entity @e[type=item_display,tag=aj.treasure_chest.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.treasure_chest.root,predicate=!eden:entity/has_pig_vehicle] at @s run function nice_mobs:piggy_bank/behavior/death

#run functions as base entity
execute as @e[type=pig,tag=nice_mobs.piggy_bank.vehicle] at @s run function nice_mobs:piggy_bank/exec_as_base