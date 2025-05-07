#set rotations of passengers
execute as @s if data entity @s data.nice_mobs{holds_item: 0b} store result entity @n[type=item_display,tag=aj.tuff_golem.root,distance=..2] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle animations
execute as @s as @s unless data entity @s data.nice_mobs{animation:"idle"} if data entity @s data.nice_mobs{holds_item: 0b} if data entity @s data.nice_mobs{action: 0b} if predicate eden:entity/is_idle run function nice_mobs:tuff_golem/behavior/idle
execute as @s as @s unless data entity @s data.nice_mobs{animation:"walk"} if data entity @s data.nice_mobs{holds_item: 0b} if data entity @s data.nice_mobs{action: 0b} if predicate eden:entity/is_walking run function nice_mobs:tuff_golem/behavior/walk

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt: 0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:tuff_golem/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt: 1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:tuff_golem/behavior/hurt/end with entity @s data.nice_mobs

#item hold behaviors
execute as @s if data entity @s data.nice_mobs{holds_item: 1b} if data entity @s data.nice_mobs{action: 1b} run scoreboard players add @s nice_mobs.entity.generic_timer 1
execute as @s[scores={nice_mobs.entity.generic_timer=..1}] unless data entity @s data.nice_mobs{animation:"end_holding"} if data entity @s data.nice_mobs{holds_item: 1b} if data entity @s data.nice_mobs{action: 1b} run function nice_mobs:tuff_golem/behavior/end_holding
execute as @s[scores={nice_mobs.entity.generic_timer=2..}] run function nice_mobs:tuff_golem/behavior/remove_holding_data
execute as @s if data entity @s data.nice_mobs{holds_item: 0b} if data entity @s data.nice_mobs{action: 1b} run function nice_mobs:tuff_golem/behavior/start_holding