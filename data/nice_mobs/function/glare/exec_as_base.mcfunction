#set rotations of passengers
execute if entity @e[type=player,distance=..32] store result entity @n[type=item_display,tag=aj.glare.root,distance=..3] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"idle"} if predicate nice_mobs:entity/is_idle run function nice_mobs:glare/behavior/idle
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"walk"} if predicate nice_mobs:entity/is_walking run function nice_mobs:glare/behavior/walk

#apply textures when hurt or not
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt:0b} unless predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:glare/behavior/hurt/start with entity @s data.nice_mobs
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt:1b} if predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:glare/behavior/hurt/end with entity @s data.nice_mobs

#set lightblocks
execute anchored eyes align xyz positioned ~ ~ ~ if block ~ ~ ~ #nice_mobs:valid_for_glare_lightblock if predicate nice_mobs:location/light_level_8_or_less run return run function nice_mobs:glare/behavior/set_lightblock
execute anchored eyes align xyz positioned ~ ~1 ~ if block ~ ~ ~ #nice_mobs:valid_for_glare_lightblock if predicate nice_mobs:location/light_level_8_or_less run return run function nice_mobs:glare/behavior/set_lightblock
execute anchored eyes align xyz positioned ~ ~2 ~ if block ~ ~ ~ #nice_mobs:valid_for_glare_lightblock if predicate nice_mobs:location/light_level_8_or_less run return run function nice_mobs:glare/behavior/set_lightblock