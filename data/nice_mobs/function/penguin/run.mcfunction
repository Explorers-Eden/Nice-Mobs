schedule function nice_mobs:penguin/run 5t

#cancel further functions if no penguin vehicle exists
execute unless entity @e[type=item_display,tag=aj.penguin.root] run return fail

#remove if vehicle entity is dead or hit by lightning
execute as @e[type=item_display,tag=aj.penguin.root,predicate=!eden:entity/has_zombie_horse_vehicle] at @s run function animated_java:penguin/remove/this

#set rotations of passengers
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle] at @s store result entity @n[type=item_display,tag=aj.penguin.root] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute as @e[type=item_display,tag=aj.penguin.root] run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_idle] at @s if predicate eden:entity/is_idle run function nice_mobs:penguin/behavior/idle
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_walking] at @s if predicate eden:entity/is_walking run function nice_mobs:penguin/behavior/walk

#give speed on ice
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle] at @s if predicate eden:entity/is_walking if predicate eden:location/stepping_on_ice run effect give @s minecraft:speed 3 3 true 