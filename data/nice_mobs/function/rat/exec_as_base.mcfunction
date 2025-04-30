#set rotations of passengers
execute as @s[tag=nice_mobs.rat.vehicle] store result entity @n[type=item_display,tag=aj.rat.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @s[tag=nice_mobs.rat.vehicle,tag=!is_idle,tag=!is_hiding] if predicate eden:entity/is_idle run function nice_mobs:rat/behavior/idle
execute as @s[tag=nice_mobs.rat.vehicle,tag=!is_walking,tag=!is_hiding] if predicate eden:entity/is_walking run function nice_mobs:rat/behavior/walk

#apply textures when hurt or not
execute as @s[tag=nice_mobs.rat.vehicle,tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:rat/behavior/hurt/start
execute as @s[tag=nice_mobs.rat.vehicle,tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:rat/behavior/hurt/end


#eating functions
execute as @s[scores={nice_mobs.entity.action=1}] run scoreboard players add @s nice_mobs.entity.timer 1
execute as @s[scores={nice_mobs.entity.action=1,nice_mobs.entity.timer=..13}] run function nice_mobs:rat/behavior/eating/during_action
execute as @s[scores={nice_mobs.entity.timer=14}] run function nice_mobs:rat/behavior/eating/end
execute as @s[scores={nice_mobs.entity.timer=64..}] run function nice_mobs:rat/behavior/eating/reset
