schedule function nice_mobs:mushling/run 5t

#cancel further functions if no mushling vehicle exists
execute unless entity @e[type=item_display,tag=aj.mushling.root] run return fail

#remove if vehicle entity is dead or hit by lightning
execute as @e[type=item_display,tag=aj.mushling.root,predicate=!eden:entity/has_zombie_horse_vehicle] at @s run function animated_java:mushling/remove/this

#increase timers
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle] at @s if predicate eden:entity/is_idle if predicate eden:location/stepping_on_dirt run scoreboard players add @s nice_mobs.mushling.dig.timer 1

#set rotations of passengers
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle] at @s store result entity @n[type=item_display,tag=aj.mushling.root] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute as @e[type=item_display,tag=aj.mushling.root] run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!is_idle,scores={nice_mobs.mushling.dig.timer=..959}] at @s if predicate eden:entity/is_idle run function nice_mobs:mushling/behavior/idle
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!is_idle,scores={nice_mobs.mushling.dig.timer=960..}] at @s if predicate eden:entity/is_idle unless predicate eden:location/stepping_on_dirt run function nice_mobs:mushling/behavior/idle
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!is_walking] at @s if predicate eden:entity/is_walking run function nice_mobs:mushling/behavior/walk

#apply textures when hurt or not
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.red,tag=!is_hurt] at @s unless predicate eden:entity/has_no_hurttime run function nice_mobs:mushling/behavior/textures/red_hurt
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.red,tag=!not_hurt] at @s if predicate eden:entity/has_no_hurttime run function nice_mobs:mushling/behavior/textures/red
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.brown,tag=!is_hurt] at @s unless predicate eden:entity/has_no_hurttime run function nice_mobs:mushling/behavior/textures/brown_hurt
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.brown,tag=!not_hurt] at @s if predicate eden:entity/has_no_hurttime run function nice_mobs:mushling/behavior/textures/brown

#digging
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,scores={nice_mobs.mushling.dig.timer=960..}] at @s if predicate eden:entity/is_idle if predicate eden:location/stepping_on_dirt run function nice_mobs:mushling/behavior/digging

#play ambient sound
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=is_idle] at @s if predicate eden:percentages/5 run playsound minecraft:entity.armadillo.ambient neutral @a ~ ~ ~ .5 2
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=is_walking] at @s if predicate eden:percentages/5 run playsound minecraft:entity.armadillo.ambient neutral @a ~ ~ ~ .5 2

#modify misc data
effect clear @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle] minecraft:glowing