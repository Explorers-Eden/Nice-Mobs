#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.vulture.root,distance=..3] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute store result storage eden:temp vulture.rotation float 1 run data get entity @s Rotation[1]
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"vulture.rotation"},"range":{"min":0}} store result entity @n[type=item_display,tag=aj.vulture.root,distance=..3] Rotation[1] float 0.0001 run data get entity @s Rotation[1] 10000
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"vulture.rotation"},"range":{"min":0}} on passengers run data modify entity @s Rotation[1] set value 0f

#apply textures when hurt or not
execute as @s if data entity @s data.nice_mobs{hurt:0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:vulture/behavior/hurt/start with entity @s data.nice_mobs
execute as @s if data entity @s data.nice_mobs{hurt:1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:vulture/behavior/hurt/end with entity @s data.nice_mobs

#damage entity when night time or in rain
execute if predicate eden:entity/valid_for_vulture_damage if predicate eden:percentages/10 run return run damage @s 2