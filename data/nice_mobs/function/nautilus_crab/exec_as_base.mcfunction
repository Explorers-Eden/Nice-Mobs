#increase timers
execute as @s[predicate=eden:percentages/25] if predicate eden:entity/is_idle if predicate eden:location/stepping_on_sand run scoreboard players add @s nice_mobs.entity.timer 1

#set rotations of passengers
execute as @s store result entity @n[type=item_display,tag=aj.nautilus_crab.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @s[tag=!is_idle,scores={nice_mobs.entity.timer=..959}] if predicate eden:entity/is_idle run function nice_mobs:nautilus_crab/behavior/idle
execute as @s[tag=!is_idle,scores={nice_mobs.entity.timer=960..}] if predicate eden:entity/is_idle unless predicate eden:location/stepping_on_sand run function nice_mobs:nautilus_crab/behavior/idle
execute as @s[tag=!is_walking] if predicate eden:entity/is_walking run function nice_mobs:nautilus_crab/behavior/walk

#apply textures when hurt or not
execute as @s[tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:nautilus_crab/behavior/hurt/start
execute as @s[tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:nautilus_crab/behavior/hurt/end

#digging
execute as @s[scores={nice_mobs.entity.timer=960..}] if predicate eden:entity/is_idle if predicate eden:location/stepping_on_sand run function nice_mobs:nautilus_crab/behavior/digging

