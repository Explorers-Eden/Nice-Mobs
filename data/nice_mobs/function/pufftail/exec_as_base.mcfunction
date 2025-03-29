#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.pufftail.root,distance=..5] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute unless entity @e[type=player,distance=..32] on passengers run data modify entity @s Rotation[1] set value 0f
execute if entity @e[type=player,distance=..32] on passengers run rotate @s facing entity @p[distance=..32]

#play fly/idle animations
execute as @s[tag=!is_idle] if predicate eden:entity/is_idle run function nice_mobs:pufftail/behavior/idle
execute as @s[tag=!is_flying] if predicate eden:entity/is_flying run function nice_mobs:pufftail/behavior/fly

#apply textures when hurt or not
execute as @s[tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:pufftail/behavior/hurt/start
execute as @s[tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:pufftail/behavior/hurt/end