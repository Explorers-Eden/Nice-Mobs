#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.bloomer.root,distance=..2] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute if data entity @s data.nice_mobs{action: 0b} unless data entity @s data.nice_mobs{animation:"idle"} if predicate eden:entity/is_idle run function nice_mobs:bloomer/behavior/idle
execute if data entity @s data.nice_mobs{action: 0b} unless data entity @s data.nice_mobs{animation:"walk"} if predicate eden:entity/is_walking run function nice_mobs:bloomer/behavior/walk

#do explosion actions
execute if data entity @s data.nice_mobs{action: 0b} if predicate eden:entity/targeted_player_within_3_blocks run function nice_mobs:bloomer/behavior/primed
execute if data entity @s data.nice_mobs{action: 0b} if data entity @s {"ignited":1b} run function nice_mobs:bloomer/behavior/primed
execute if data entity @s data.nice_mobs{action: 1b} on passengers run function nice_mobs:bloomer/behavior/flashing
execute unless entity @e[type=player,distance=..3] run function nice_mobs:bloomer/behavior/reset

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt:0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:bloomer/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt:1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:bloomer/behavior/hurt/end with entity @s data.nice_mobs