schedule function nice_mobs:snail/run 5t

#cancel further functions if no snail vehicle exists
execute unless entity @e[type=item_display,tag=aj.snail.root] run return fail

#set rotations of passengers
execute as @e[type=zombie_horse,tag=nice_mobs.snail.vehicle] at @s store result entity @n[type=item_display,tag=aj.snail.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute as @e[type=zombie_horse,tag=nice_mobs.snail.vehicle,tag=!is_idle,tag=!is_hiding] at @s if predicate eden:entity/is_idle run function nice_mobs:snail/behavior/idle
execute as @e[type=zombie_horse,tag=nice_mobs.snail.vehicle,tag=!is_walking,tag=!is_hiding] at @s if predicate eden:entity/is_walking run function nice_mobs:snail/behavior/walk

#apply textures when hurt or not
execute as @e[type=zombie_horse,tag=nice_mobs.snail.vehicle,tag=!is_hurt] at @s unless predicate eden:entity/has_no_hurttime run function nice_mobs:snail/behavior/hurt/start
execute as @e[type=zombie_horse,tag=nice_mobs.snail.vehicle,tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] at @s if predicate eden:entity/has_no_hurttime run function nice_mobs:snail/behavior/hurt/end

#hiding behavior
execute as @e[type=zombie_horse,tag=nice_mobs.snail.vehicle,tag=!is_hiding] at @s if entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/start
execute as @e[type=zombie_horse,tag=nice_mobs.snail.vehicle,tag=is_hiding] at @s if entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/during
execute as @e[type=zombie_horse,tag=nice_mobs.snail.vehicle,tag=is_hiding] at @s unless entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/end