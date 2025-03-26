#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.penguin.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle/fall animations
execute as @s[tag=!is_idle] if predicate eden:entity/is_idle unless predicate eden:entity/is_falling run function nice_mobs:penguin/behavior/idle
execute as @s[tag=!is_walking] if predicate eden:entity/is_walking unless predicate eden:entity/is_falling run function nice_mobs:penguin/behavior/walk
execute as @s[tag=!is_falling] if predicate eden:entity/is_falling run function nice_mobs:penguin/behavior/fall

#apply textures when hurt or not
execute as @s[tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:penguin/behavior/hurt/start
execute as @s[tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:penguin/behavior/hurt/end

#give speed on ice
execute if predicate eden:entity/is_walking if predicate eden:location/stepping_on_ice run effect give @s minecraft:speed 3 3 true 

#bartering functions
execute as @s[scores={nice_mobs.entity.action=1}] run scoreboard players add @s nice_mobs.entity.timer 1
execute as @s[scores={nice_mobs.entity.timer=5}] run function nice_mobs:penguin/behavior/bartering/end
execute as @s[scores={nice_mobs.entity.timer=120..}] run function nice_mobs:penguin/behavior/bartering/reset
