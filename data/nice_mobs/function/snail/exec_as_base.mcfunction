#set rotations of passengers
execute as @s[tag=nice_mobs.snail.vehicle] store result entity @n[type=item_display,tag=aj.snail.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @s unless data entity @s data.nice_mobs{animation:"idle"} if data entity @s data.nice_mobs{action: 0b} if predicate eden:entity/is_idle run function nice_mobs:snail/behavior/idle
execute as @s unless data entity @s data.nice_mobs{animation:"walk"} if data entity @s data.nice_mobs{action: 0b} if predicate eden:entity/is_walking run function nice_mobs:snail/behavior/walk

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt: 0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:snail/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt: 1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:snail/behavior/hurt/end with entity @s data.nice_mobs

#hiding behavior
execute as @s if data entity @s data.nice_mobs{action: 0b} if entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/start
execute as @s if data entity @s data.nice_mobs{action: 1b} if entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/during
execute as @s if data entity @s data.nice_mobs{action: 1b} unless entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/end