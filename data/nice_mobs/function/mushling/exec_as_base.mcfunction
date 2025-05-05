#increase timers
execute as @s[predicate=eden:percentages/25,scores={nice_mobs.entity.timer=..959}] if data entity @s data.nice_mobs{animation:"idle"} if predicate eden:location/stepping_on_dirt run scoreboard players add @s nice_mobs.entity.timer 1

#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.mushling.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @s[scores={nice_mobs.entity.timer=..959}] unless data entity @s data.nice_mobs{animation:"idle"} if predicate eden:entity/is_idle run function nice_mobs:mushling/behavior/idle
execute as @s[scores={nice_mobs.entity.timer=960..}] unless data entity @s data.nice_mobs{animation:"idle"} if predicate eden:entity/is_idle unless predicate eden:location/stepping_on_dirt run function nice_mobs:mushling/behavior/idle
execute unless data entity @s data.nice_mobs{animation:"walk"} if predicate eden:entity/is_walking run function nice_mobs:mushling/behavior/walk

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt:0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:mushling/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt:1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:mushling/behavior/hurt/end with entity @s data.nice_mobs

#digging
execute as @s[scores={nice_mobs.entity.timer=960..}] if predicate eden:entity/is_idle if predicate eden:location/stepping_on_dirt run function nice_mobs:mushling/behavior/digging

