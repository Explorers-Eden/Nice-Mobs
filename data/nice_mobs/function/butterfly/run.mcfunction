schedule function nice_mobs:butterfly/run 5t

#butterfly effect timer for players
scoreboard players add @a nice_mobs.player.butterfly_effect 0
scoreboard players remove @a[scores={nice_mobs.player.butterfly_effect=1..}] nice_mobs.player.butterfly_effect 1

#cancel further functions if no butterfly vehicle exists
execute unless entity @e[type=item_display,tag=aj.butterfly.root] run return fail

#on death
execute as @e[type=item_display,tag=aj.butterfly.root,predicate=!eden:entity/has_bee_vehicle] at @s run function nice_mobs:butterfly/behavior/death

#run functions as base entity
execute as @e[type=bee,tag=nice_mobs.butterfly.vehicle] at @s run function nice_mobs:butterfly/exec_as_base