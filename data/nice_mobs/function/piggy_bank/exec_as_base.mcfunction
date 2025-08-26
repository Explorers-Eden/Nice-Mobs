#set rotations of passengers
execute if entity @e[type=player,distance=..32] store result entity @n[type=item_display,tag=aj.treasure_chest.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk animations
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"idle"} if predicate nice_mobs:entity/is_idle run function nice_mobs:piggy_bank/behavior/idle
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"walk"} if predicate nice_mobs:entity/is_walking run function nice_mobs:piggy_bank/behavior/walk

#throw loot when hurt
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt:0b} unless predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:piggy_bank/behavior/hurt/start with entity @s data.nice_mobs
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt:1b} if predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:piggy_bank/behavior/hurt/end with entity @s data.nice_mobs

#particles
execute anchored eyes run particle minecraft:wax_on ~ ~.6 ~ .5 .5 .5 1 1

#add to timer and kill after 15 minutes
scoreboard players add @s nice_mobs.entity.generic_timer 1
execute if score @s nice_mobs.entity.generic_timer matches 3600.. run function nice_mobs:piggy_bank/behavior/remove