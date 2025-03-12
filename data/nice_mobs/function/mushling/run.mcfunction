schedule function nice_mobs:mushling/run 5t

#cancel further functions if no mushling vehicle exists
execute unless entity @e[type=item_display,tag=aj.mushling.root] run return fail

#increase timers
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle] at @s if predicate eden:entity/is_idle if predicate eden:location/stepping_on_dirt run scoreboard players add @s nice_mobs.entity.timer 1

#set rotations of passengers
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle] at @s store result entity @n[type=item_display,tag=aj.mushling.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!is_idle,scores={nice_mobs.entity.timer=..959}] at @s if predicate eden:entity/is_idle run function nice_mobs:mushling/behavior/idle
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!is_idle,scores={nice_mobs.entity.timer=960..}] at @s if predicate eden:entity/is_idle unless predicate eden:location/stepping_on_dirt run function nice_mobs:mushling/behavior/idle
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!is_walking] at @s if predicate eden:entity/is_walking run function nice_mobs:mushling/behavior/walk

#apply textures when hurt or not
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!is_hurt] at @s unless predicate eden:entity/has_no_hurttime run function nice_mobs:mushling/behavior/hurt/start
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] at @s if predicate eden:entity/has_no_hurttime run function nice_mobs:mushling/behavior/hurt/end

#digging
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,scores={nice_mobs.entity.timer=960..}] at @s if predicate eden:entity/is_idle if predicate eden:location/stepping_on_dirt run function nice_mobs:mushling/behavior/digging

#modify misc data
effect clear @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle] minecraft:glowing