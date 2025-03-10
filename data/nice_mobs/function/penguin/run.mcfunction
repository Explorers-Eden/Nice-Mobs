schedule function nice_mobs:penguin/run 5t

#cancel further functions if no penguin vehicle exists
execute unless entity @e[type=item_display,tag=aj.penguin.root] run return fail

#remove if vehicle entity is dead or hit by lightning
execute as @e[type=item_display,tag=aj.penguin.root,predicate=!eden:entity/has_zombie_horse_vehicle] at @s run function animated_java:penguin/remove/this

#set rotations of passengers
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle] at @s store result entity @n[type=item_display,tag=aj.penguin.root] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute as @e[type=item_display,tag=aj.penguin.root] run data modify entity @s Rotation[1] set value 0f

#play walk/idle/fall animations
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_idle] at @s if predicate eden:entity/is_idle unless predicate eden:entity/is_falling run function nice_mobs:penguin/behavior/idle
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_walking] at @s if predicate eden:entity/is_walking unless predicate eden:entity/is_falling run function nice_mobs:penguin/behavior/walk
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_falling] at @s if predicate eden:entity/is_falling run function nice_mobs:penguin/behavior/fall

#apply textures when hurt or not
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_hurt] at @s unless predicate eden:entity/has_no_hurttime run function nice_mobs:penguin/behavior/textures/default_hurt
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!not_hurt] at @s if predicate eden:entity/has_no_hurttime run function nice_mobs:penguin/behavior/textures/default

#give speed on ice
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle] at @s if predicate eden:entity/is_walking if predicate eden:location/stepping_on_ice run effect give @s minecraft:speed 3 3 true 

#play ambient sound
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=is_idle] at @s if predicate eden:percentages/2-5 run playsound minecraft:entity.chicken.ambient neutral @a ~ ~ ~ .6 .2
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=is_walking] at @s if predicate eden:percentages/2-5 run playsound minecraft:entity.chicken.ambient neutral @a ~ ~ ~ .6 .2

#bartering functions
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,scores={nice_mobs.penguin.bartering.action=1}] run scoreboard players add @s nice_mobs.penguin.bartering.timer 1

execute as @e[type=item,nbt={Item:{id:"minecraft:cod"}}] at @s if entity @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_bartering,distance=..1] run function nice_mobs:penguin/behavior/bartering/init
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,scores={nice_mobs.penguin.bartering.timer=4}] at @s run function nice_mobs:penguin/behavior/bartering/end
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,scores={nice_mobs.penguin.bartering.timer=40..}] run function nice_mobs:penguin/behavior/bartering/reset