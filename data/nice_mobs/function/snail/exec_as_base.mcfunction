#set rotations of passengers
execute as @s[tag=nice_mobs.snail.vehicle] store result entity @n[type=item_display,tag=aj.snail.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @s[tag=nice_mobs.snail.vehicle,tag=!is_idle,tag=!is_hiding] if predicate eden:entity/is_idle run function nice_mobs:snail/behavior/idle
execute as @s[tag=nice_mobs.snail.vehicle,tag=!is_walking,tag=!is_hiding] if predicate eden:entity/is_walking run function nice_mobs:snail/behavior/walk

#apply textures when hurt or not
execute as @s[tag=nice_mobs.snail.vehicle,tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:snail/behavior/hurt/start
execute as @s[tag=nice_mobs.snail.vehicle,tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:snail/behavior/hurt/end

#hiding behavior
execute as @s[tag=nice_mobs.snail.vehicle,tag=!is_hiding] if entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/start
execute as @s[tag=nice_mobs.snail.vehicle,tag=is_hiding] if entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/during
execute as @s[tag=nice_mobs.snail.vehicle,tag=is_hiding] unless entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/end