#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.enderkin.root,distance=..2.5] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#particles
particle minecraft:reverse_portal ~ ~.5 ~ .4 .4 .4 0.01 1

#play walk/idle/fall animations
execute as @s unless data entity @s data.nice_mobs{animation:"idle"} if data entity @s data.nice_mobs{is_bartering: 0b} if predicate eden:entity/is_idle run function nice_mobs:enderkin/behavior/idle
execute as @s unless data entity @s data.nice_mobs{animation:"walk"} if data entity @s data.nice_mobs{is_bartering: 0b} if predicate eden:entity/is_walking run function nice_mobs:enderkin/behavior/walk

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt: 0b} unless predicate eden:entity/has_no_hurttime run function nice_mobs:enderkin/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt: 1b} if predicate eden:entity/has_no_hurttime run function nice_mobs:enderkin/behavior/hurt/end with entity @s data.nice_mobs

#damage when wet
execute if predicate eden:entity/is_wet run damage @s 0.25

#bartering functions
#execute as @s if data entity @s data.nice_mobs{action: 1b} run scoreboard players add @s nice_mobs.entity.generic_timer 1
#execute as @s[scores={nice_mobs.entity.generic_timer=5}] run function nice_mobs:enderkin/behavior/bartering/end
#execute as @s[scores={nice_mobs.entity.generic_timer=120..}] run function nice_mobs:enderkin/behavior/bartering/reset
