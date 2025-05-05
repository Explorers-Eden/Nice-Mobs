#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.cruncher.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle/fall animations
execute as @s unless data entity @s data.nice_mobs{animation:"idle"} if data entity @s data.nice_mobs{action: 0b} if predicate eden:entity/is_idle unless predicate eden:entity/is_falling run function nice_mobs:cruncher/behavior/idle
execute as @s unless data entity @s data.nice_mobs{animation:"walk"} if data entity @s data.nice_mobs{action: 0b} if predicate eden:entity/is_walking unless predicate eden:entity/is_falling run function nice_mobs:cruncher/behavior/walk
execute as @s unless data entity @s data.nice_mobs{animation:"fall"} if data entity @s data.nice_mobs{action: 0b} if predicate eden:entity/is_falling run function nice_mobs:cruncher/behavior/fall

#drop ores when hit
execute if data entity @s data.nice_mobs{hurt:0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:cruncher/behavior/hurt/drop_ores with entity @s data.nice_mobs.inventory

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt:0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:cruncher/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt:1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:cruncher/behavior/hurt/end with entity @s data.nice_mobs

#eating functions
execute as @s if data entity @s data.nice_mobs{action: 1b} run scoreboard players add @s nice_mobs.entity.timer 1
execute as @s[scores={nice_mobs.entity.timer=3}] run particle block{block_state:"minecraft:dripstone_block"} ^ ^.3 ^.4 0 0 0 0 15 normal
execute as @s[scores={nice_mobs.entity.timer=6}] run function nice_mobs:cruncher/behavior/eating/end
execute as @s[scores={nice_mobs.entity.timer=8..}] run function nice_mobs:cruncher/behavior/eating/reset
