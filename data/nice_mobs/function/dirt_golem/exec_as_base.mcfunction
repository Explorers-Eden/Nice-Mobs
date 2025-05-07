#increase timers
execute as @s[scores={nice_mobs.entity.generic_timer=960..}] if data entity @s data.nice_mobs{action:1b} run scoreboard players add @s nice_mobs.entity.generic_timer 1
execute as @s[predicate=eden:percentages/25,scores={nice_mobs.entity.generic_timer=..959}] if data entity @s data.nice_mobs{action:0b} if predicate eden:location/stepping_on_dirt run scoreboard players add @s nice_mobs.entity.generic_timer 1

#set rotations of passengers
execute as @s if data entity @s data.nice_mobs{action:0b} store result entity @n[type=item_display,tag=aj.dirt_golem.root,distance=..2] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @s unless data entity @s data.nice_mobs{animation:"idle"} if data entity @s data.nice_mobs{action:0b} if predicate eden:entity/is_idle run function nice_mobs:dirt_golem/behavior/idle
execute as @s unless data entity @s data.nice_mobs{animation:"walk"} if data entity @s data.nice_mobs{action:0b} if predicate eden:entity/is_walking run function nice_mobs:dirt_golem/behavior/walk

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt:0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:dirt_golem/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt:1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:dirt_golem/behavior/hurt/end with entity @s data.nice_mobs

#planting
execute as @s[scores={nice_mobs.entity.generic_timer=960}] if data entity @s data.nice_mobs{action:0b} if predicate eden:location/stepping_on_dirt if block ~ ~ ~ #minecraft:air run function nice_mobs:dirt_golem/behavior/planting/init
execute as @s[scores={nice_mobs.entity.generic_timer=964}] if data entity @s data.nice_mobs{action:1b} if predicate eden:location/stepping_on_dirt if block ~ ~ ~ #minecraft:air run function nice_mobs:dirt_golem/behavior/planting/pre_planting
execute as @s[scores={nice_mobs.entity.generic_timer=968..}] run function nice_mobs:dirt_golem/behavior/planting/end_planting