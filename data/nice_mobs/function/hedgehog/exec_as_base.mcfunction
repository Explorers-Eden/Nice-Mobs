#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.hedgehog.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute unless data entity @s data.nice_mobs{animation:"idle"} if data entity @s data.nice_mobs{action: 0b} if predicate eden:entity/is_idle run function nice_mobs:hedgehog/behavior/idle
execute unless data entity @s data.nice_mobs{animation:"walk"} if data entity @s data.nice_mobs{action: 0b} if predicate eden:entity/is_walking run function nice_mobs:hedgehog/behavior/walk

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt:0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:hedgehog/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt:1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:hedgehog/behavior/hurt/end with entity @s data.nice_mobs

#hiding behavior
execute as @s if data entity @s data.nice_mobs{action: 0b} if entity @e[type=#minecraft:undead,distance=..3] run function nice_mobs:hedgehog/behavior/hiding/start
execute as @s if data entity @s data.nice_mobs{action: 1b} if entity @e[type=#minecraft:undead,distance=..3] run function nice_mobs:hedgehog/behavior/hiding/during
execute as @s if data entity @s data.nice_mobs{action: 1b} unless entity @e[type=#minecraft:undead,distance=..3] run function nice_mobs:hedgehog/behavior/hiding/end