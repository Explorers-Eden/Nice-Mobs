#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.glare.root,distance=..3] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @s unless data entity @s data.nice_mobs{animation:"idle"} if predicate eden:entity/is_idle run function nice_mobs:glare/behavior/idle
execute as @s unless data entity @s data.nice_mobs{animation:"walk"} if predicate eden:entity/is_walking run function nice_mobs:glare/behavior/walk

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt:0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:glare/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt:1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:glare/behavior/hurt/end with entity @s data.nice_mobs

#set lightblocks
execute anchored eyes align xyz positioned ~ ~ ~ if block ~ ~ ~ #eden:valid_for_glare_lightblock if predicate eden:location/light_level_8_or_less run return run function nice_mobs:glare/behavior/set_lightblock
execute anchored eyes align xyz positioned ~ ~1 ~ if block ~ ~ ~ #eden:valid_for_glare_lightblock if predicate eden:location/light_level_8_or_less run return run function nice_mobs:glare/behavior/set_lightblock
execute anchored eyes align xyz positioned ~ ~2 ~ if block ~ ~ ~ #eden:valid_for_glare_lightblock if predicate eden:location/light_level_8_or_less run return run function nice_mobs:glare/behavior/set_lightblock