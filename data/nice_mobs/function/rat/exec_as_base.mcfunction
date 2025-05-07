#set rotations of passengers
execute as @s[tag=nice_mobs.rat.vehicle] store result entity @n[type=item_display,tag=aj.rat.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @s unless data entity @s data.nice_mobs{animation:"idle"} if data entity @s data.nice_mobs{is_eating: 0b} if predicate eden:entity/is_idle run function nice_mobs:rat/behavior/idle
execute as @s unless data entity @s data.nice_mobs{animation:"walk"} if data entity @s data.nice_mobs{is_eating: 0b} if predicate eden:entity/is_walking run function nice_mobs:rat/behavior/walk

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt: 0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:rat/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt: 1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:rat/behavior/hurt/end with entity @s data.nice_mobs

#eating functions
execute as @s if data entity @s data.nice_mobs{action: 1b} run scoreboard players add @s nice_mobs.entity.generic_timer 1
execute as @s[scores={nice_mobs.entity.generic_timer=..14}] if data entity @s data.nice_mobs{action:1b} run function nice_mobs:rat/behavior/eating/during_action
execute as @s[scores={nice_mobs.entity.generic_timer=15}] run function nice_mobs:rat/behavior/eating/end
execute as @s[scores={nice_mobs.entity.generic_timer=64..}] run function nice_mobs:rat/behavior/eating/reset
