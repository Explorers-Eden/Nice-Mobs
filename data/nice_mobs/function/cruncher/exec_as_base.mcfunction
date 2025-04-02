#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.cruncher.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk/idle/fall animations
execute as @s[tag=!is_idle] if predicate eden:entity/is_idle unless predicate eden:entity/is_falling run function nice_mobs:cruncher/behavior/idle
execute as @s[tag=!is_walking] if predicate eden:entity/is_walking unless predicate eden:entity/is_falling run function nice_mobs:cruncher/behavior/walk
execute as @s[tag=!is_falling] if predicate eden:entity/is_falling run function nice_mobs:cruncher/behavior/fall

#apply textures when hurt or not
execute as @s[tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:cruncher/behavior/hurt/start
execute as @s[tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:cruncher/behavior/hurt/end

#eating functions
execute as @s[scores={nice_mobs.entity.action=1}] run scoreboard players add @s nice_mobs.entity.timer 1
execute as @s[scores={nice_mobs.entity.timer=3}] run particle block{block_state:"minecraft:dripstone_block"} ^ ^.3 ^.4 0 0 0 0 15 normal
execute as @s[scores={nice_mobs.entity.timer=6}] run function nice_mobs:cruncher/behavior/eating/end
execute as @s[scores={nice_mobs.entity.timer=8..}] run function nice_mobs:cruncher/behavior/eating/reset
