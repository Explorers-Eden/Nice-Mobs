#set rotations of passengers
execute if entity @e[type=player,distance=..32] store result entity @n[type=item_display,tag=aj.jellyfish.root,distance=..3] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#set motion
execute if predicate nice_mobs:percentages/25 if block ~ ~ ~ #nice_mobs:jellyfish_can_survive if block ~ ~1 ~ #nice_mobs:jellyfish_can_survive run function nice_mobs:jellyfish/motion/init

#apply textures when hurt or not
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt:0b} unless predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:jellyfish/behavior/hurt/start with entity @s data.nice_mobs
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt:1b} if predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:jellyfish/behavior/hurt/end with entity @s data.nice_mobs

#set lightblocks
execute anchored eyes align xyz positioned ~ ~ ~ if block ~ ~ ~ minecraft:water[level=0] run return run function nice_mobs:jellyfish/behavior/set_lightblock