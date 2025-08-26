#set rotations of passengers
execute if entity @e[type=player,distance=..32] store result entity @n[type=item_display,tag=aj.cruncher.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle/fall animations
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"idle"} if data entity @s data.nice_mobs{action: 0b} if predicate nice_mobs:entity/is_idle unless predicate nice_mobs:entity/is_falling run function nice_mobs:cruncher/behavior/idle
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"walk"} if data entity @s data.nice_mobs{action: 0b} if predicate nice_mobs:entity/is_walking unless predicate nice_mobs:entity/is_falling run function nice_mobs:cruncher/behavior/walk
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"fall"} if data entity @s data.nice_mobs{action: 0b} if predicate nice_mobs:entity/is_falling run function nice_mobs:cruncher/behavior/fall

#drop ores when hit
execute if data entity @s data.nice_mobs{hurt:0b} unless predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:cruncher/behavior/hurt/drop_ores with entity @s data.nice_mobs.inventory

#apply textures when hurt or not
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt:0b} unless predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:cruncher/behavior/hurt/start with entity @s data.nice_mobs
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt:1b} if predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:cruncher/behavior/hurt/end with entity @s data.nice_mobs

#eating functions
execute if data entity @s data.nice_mobs{action: 1b} run scoreboard players add @s nice_mobs.entity.generic_timer 1
execute as @s[scores={nice_mobs.entity.generic_timer=3}] run particle block{block_state:"minecraft:dripstone_block"} ^ ^.3 ^.4 0 0 0 0 15 normal
execute as @s[scores={nice_mobs.entity.generic_timer=6}] run function nice_mobs:cruncher/behavior/eating/end
execute as @s[scores={nice_mobs.entity.generic_timer=8..}] run function nice_mobs:cruncher/behavior/eating/reset
