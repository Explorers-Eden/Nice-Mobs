#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.treasure_chest.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#play walk animations
execute as @s[tag=!is_idle] if predicate eden:entity/is_idle run function nice_mobs:piggy_bank/behavior/idle
execute as @s[tag=!is_walking] if predicate eden:entity/is_walking run function nice_mobs:piggy_bank/behavior/walk

#throw loot when hurt
execute as @s[tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:piggy_bank/behavior/hurt/start
execute as @s[tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:piggy_bank/behavior/hurt/end

#particles
execute anchored eyes run particle minecraft:wax_on ~ ~.6 ~ .5 .5 .5 1 1

#add to timer and kill after 15 minutes
scoreboard players add @s nice_mobs.entity.timer 1
execute if score @s nice_mobs.entity.timer matches 3600.. run function nice_mobs:piggy_bank/behavior/remove