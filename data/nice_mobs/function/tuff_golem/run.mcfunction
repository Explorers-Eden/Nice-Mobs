schedule function nice_mobs:tuff_golem/run 5t

#cancel further functions if no tuff_golem vehicle exists
execute unless entity @e[type=item_display,tag=aj.tuff_golem.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.tuff_golem.root,predicate=!eden:entity/has_villager_vehicle] at @s run function nice_mobs:tuff_golem/behavior/death

#run functions as base entity
execute as @e[type=villager,tag=nice_mobs.tuff_golem.vehicle] at @s run function nice_mobs:tuff_golem/exec_as_base