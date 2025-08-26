schedule function nice_mobs:jellyfish/run 5t

#init function for placing dried jellyfish
function nice_mobs:jellyfish/player_created/init

#cancel further functions if no jellyfish vehicle exists
execute unless entity @e[type=item_display,tag=aj.jellyfish.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.jellyfish.root,predicate=!nice_mobs:entity/has_wither_skeleton_vehicle] at @s run function nice_mobs:jellyfish/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.jellyfish.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=wither_skeleton,tag=nice_mobs.jellyfish.vehicle] at @s run function nice_mobs:jellyfish/exec_as_base