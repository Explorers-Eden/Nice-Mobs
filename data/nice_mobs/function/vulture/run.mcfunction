schedule function nice_mobs:vulture/run 5t

#vulture spawning
execute as @a[scores={nice_mobs.player.health=..6},predicate=nice_mobs:percentages/25] run scoreboard players add @a nice_mobs.player.vulture_timer 1
execute as @a[predicate=!nice_mobs:entity/can_spawn_vulture] run scoreboard players set @a nice_mobs.player.vulture_timer 0
execute as @a[scores={nice_mobs.player.vulture_timer=240..}] at @s run function nice_mobs:vulture/spawning

#cancel further functions if no vulture vehicle exists
execute unless entity @e[type=item_display,tag=aj.vulture.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.vulture.root,predicate=!nice_mobs:entity/has_phantom_vehicle] at @s run function nice_mobs:vulture/behavior/death

#align rig with vehicle
execute as @e[type=item_display,tag=aj.vulture.root] at @s on passengers run rotate @s ~ ~

#run functions as base entity
execute as @e[type=phantom,tag=nice_mobs.vulture.vehicle] at @s run function nice_mobs:vulture/exec_as_base