#set rotations of passengers
execute as @s[tag=nice_mobs.rat.vehicle] store result entity @n[type=item_display,tag=aj.rat.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute as @s[tag=nice_mobs.rat.vehicle,tag=!is_idle,tag=!is_hiding] if predicate eden:entity/is_idle run function nice_mobs:rat/behavior/idle
execute as @s[tag=nice_mobs.rat.vehicle,tag=!is_walking,tag=!is_hiding] if predicate eden:entity/is_walking run function nice_mobs:rat/behavior/walk

#apply textures when hurt or not
execute as @s[tag=nice_mobs.rat.vehicle,tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:rat/behavior/hurt/start
execute as @s[tag=nice_mobs.rat.vehicle,tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:rat/behavior/hurt/end
