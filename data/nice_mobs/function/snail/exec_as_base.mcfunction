#set rotations of passengers
execute if entity @e[type=player,distance=..32] as @s[tag=nice_mobs.snail.vehicle] store result entity @n[type=item_display,tag=aj.snail.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"idle"} if data entity @s data.nice_mobs{action: 0b} if predicate nice_mobs:entity/is_idle run function nice_mobs:snail/behavior/idle
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"walk"} if data entity @s data.nice_mobs{action: 0b} if predicate nice_mobs:entity/is_walking run function nice_mobs:snail/behavior/walk

#apply textures when hurt or not
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt: 0b} unless predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:snail/behavior/hurt/start with entity @s data.nice_mobs
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt: 1b} if predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:snail/behavior/hurt/end with entity @s data.nice_mobs

#hiding behavior
execute if data entity @s data.nice_mobs{action: 0b} if entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/start
execute if data entity @s data.nice_mobs{action: 1b} if entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/during
execute if data entity @s data.nice_mobs{action: 1b} unless entity @e[type=#minecraft:arthropod,distance=..3] run function nice_mobs:snail/behavior/hiding/end