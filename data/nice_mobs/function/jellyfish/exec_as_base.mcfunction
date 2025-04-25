#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.jellyfish.root,distance=..3] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
#execute on passengers run data modify entity @s Rotation[1] set value 0f

#set motion
execute if predicate eden:percentages/25 if block ~ ~ ~ #eden:jellyfish_can_survive if block ~ ~1 ~ #eden:jellyfish_can_survive run function nice_mobs:jellyfish/motion/init

#apply textures when hurt or not
execute as @s[tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:jellyfish/behavior/hurt/start
execute as @s[tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:jellyfish/behavior/hurt/end

#set lightblocks
execute anchored eyes align xyz positioned ~ ~ ~ if block ~ ~ ~ minecraft:water[level=0] run return run function nice_mobs:jellyfish/behavior/set_lightblock