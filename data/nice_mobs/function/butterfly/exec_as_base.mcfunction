#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.butterfly.root,distance=..3] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#apply textures when hurt or not
execute as @s if data entity @s data.nice_mobs{hurt:0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:butterfly/behavior/hurt/start with entity @s data.nice_mobs
execute as @s if data entity @s data.nice_mobs{hurt:1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:butterfly/behavior/hurt/end with entity @s data.nice_mobs

#give player effect
execute if data entity @s {HasNectar:1b} if entity @e[type=player,gamemode=survival,distance=..3,scores={nice_mobs.player.butterfly_effect=..0}] run function nice_mobs:butterfly/behavior/give_effect with entity @s data.nice_mobs