#increase timers
execute as @s[predicate=nice_mobs:percentages/25,scores={nice_mobs.entity.generic_timer=..959}] if predicate nice_mobs:location/stepping_on_sand run scoreboard players add @s nice_mobs.entity.generic_timer 1

#set rotations of passengers
execute if entity @e[type=player,distance=..32] store result entity @n[type=item_display,tag=aj.nautilus_crab.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute if entity @e[type=player,distance=..32] as @s[scores={nice_mobs.entity.generic_timer=..959}] unless data entity @s data.nice_mobs{animation:"idle"} if predicate nice_mobs:entity/is_idle run function nice_mobs:nautilus_crab/behavior/idle
execute if entity @e[type=player,distance=..32] as @s[scores={nice_mobs.entity.generic_timer=960..}] unless data entity @s data.nice_mobs{animation:"idle"} if predicate nice_mobs:entity/is_idle unless predicate nice_mobs:location/stepping_on_sand run function nice_mobs:nautilus_crab/behavior/idle
execute if entity @e[type=player,distance=..32] as @s unless data entity @s data.nice_mobs{animation:"walk"} if predicate nice_mobs:entity/is_walking run function nice_mobs:nautilus_crab/behavior/walk

#apply textures when hurt or not
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt:0b} unless predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:nautilus_crab/behavior/hurt/start with entity @s data.nice_mobs
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt:1b} if predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:nautilus_crab/behavior/hurt/end with entity @s data.nice_mobs

#digging
execute as @s[scores={nice_mobs.entity.generic_timer=960..}] if predicate nice_mobs:location/stepping_on_sand run function nice_mobs:nautilus_crab/behavior/digging

