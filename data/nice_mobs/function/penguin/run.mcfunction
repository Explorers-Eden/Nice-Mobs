schedule function nice_mobs:penguin/run 5t

#cancel further functions if no penguin vehicle exists
execute unless entity @e[type=item_display,tag=aj.penguin.root] run return fail

#set rotations of passengers
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle] at @s store result entity @n[type=item_display,tag=aj.penguin.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle/fall animations
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_idle] at @s if predicate eden:entity/is_idle unless predicate eden:entity/is_falling run function nice_mobs:penguin/behavior/idle
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_walking] at @s if predicate eden:entity/is_walking unless predicate eden:entity/is_falling run function nice_mobs:penguin/behavior/walk
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_falling] at @s if predicate eden:entity/is_falling run function nice_mobs:penguin/behavior/fall

#apply textures when hurt or not
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_hurt] at @s unless predicate eden:entity/has_no_hurttime run function nice_mobs:penguin/behavior/hurt/start
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] at @s if predicate eden:entity/has_no_hurttime run function nice_mobs:penguin/behavior/hurt/end

#give speed on ice
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle] at @s if predicate eden:entity/is_walking if predicate eden:location/stepping_on_ice run effect give @s minecraft:speed 3 3 true 

#bartering functions
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,scores={nice_mobs.entity.action=1}] run scoreboard players add @s nice_mobs.entity.timer 1

execute as @e[type=item,predicate=eden:entity/is_cod_item] at @s if entity @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_bartering,distance=..1] run function nice_mobs:penguin/behavior/bartering/init
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,scores={nice_mobs.entity.timer=4}] at @s run function nice_mobs:penguin/behavior/bartering/end
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,scores={nice_mobs.entity.timer=120..}] run function nice_mobs:penguin/behavior/bartering/reset