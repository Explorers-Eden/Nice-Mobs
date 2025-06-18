#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.copper_golem.root,distance=..2] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play default walk/idle animations
execute as @s unless data entity @s data.nice_mobs{animation:"idle"} if predicate eden:entity/has_no_angertime if predicate eden:entity/is_idle run function nice_mobs:copper_golem/behavior/idle
execute as @s unless data entity @s data.nice_mobs{animation:"walk"} if predicate eden:entity/has_no_angertime if predicate eden:entity/is_walking run function nice_mobs:copper_golem/behavior/walk

#play anger walk/idle animations
execute as @s unless data entity @s data.nice_mobs{animation:"idle_angry"} unless predicate eden:entity/has_no_angertime if predicate eden:entity/is_idle run function nice_mobs:copper_golem/behavior/idle_angry
execute as @s unless data entity @s data.nice_mobs{animation:"walk_angry"} unless predicate eden:entity/has_no_angertime if predicate eden:entity/is_walking run function nice_mobs:copper_golem/behavior/walk_angry

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt:0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:copper_golem/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt:1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:copper_golem/behavior/hurt/end with entity @s data.nice_mobs

#switch copper bulb on/off when walking on it
execute if block ~ ~-1 ~ #eden:copper_bulbs[lit=false] if predicate eden:time/night_time run function nice_mobs:copper_golem/behavior/copper_bulb/switch_on
execute if block ~ ~-1 ~ #eden:copper_bulbs[lit=true] unless predicate eden:time/night_time run function nice_mobs:copper_golem/behavior/copper_bulb/switch_off

#increase timer when on oxidization target block
execute if block ~ ~-1 ~ #eden:can_oxidize_by_copper_golem run scoreboard players add @s nice_mobs.entity.generic_timer 1

#oxidize copper block when timer reached its goal and golem is on block
execute if block ~ ~-1 ~ #eden:can_oxidize_by_copper_golem if score @s nice_mobs.entity.generic_timer matches 480.. run function nice_mobs:copper_golem/behavior/oxidize_copper_block