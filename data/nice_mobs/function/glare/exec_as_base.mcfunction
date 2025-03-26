#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.glare.root,distance=..3] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @s[tag=!is_idle] if predicate eden:entity/is_idle run function nice_mobs:glare/behavior/idle
execute as @s[tag=!is_walking] if predicate eden:entity/is_walking run function nice_mobs:glare/behavior/walk

#apply textures when hurt or not
execute as @s[tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:glare/behavior/hurt/start
execute as @s[tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:glare/behavior/hurt/end

#set lightblocks
execute anchored eyes align xyz positioned ~ ~ ~ if block ~ ~ ~ #eden:valid_for_glare_lightblock if predicate eden:location/light_level_8_or_less run return run function nice_mobs:glare/behavior/set_lightblock
execute anchored eyes align xyz positioned ~ ~2 ~ if block ~ ~ ~ #eden:valid_for_glare_lightblock if predicate eden:location/light_level_8_or_less run return run function nice_mobs:glare/behavior/set_lightblock
execute anchored eyes align xyz positioned ~ ~2 ~ if block ~ ~ ~ #eden:valid_for_glare_lightblock if predicate eden:location/light_level_8_or_less run return run function nice_mobs:glare/behavior/set_lightblock