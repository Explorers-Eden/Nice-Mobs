#set rotations of passengers
execute if entity @e[type=player,distance=..32] store result entity @n[type=item_display,tag=aj.penguin.root,distance=..1] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle/fall animations
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"idle"} if data entity @s data.nice_mobs{is_bartering: 0b} if predicate nice_mobs:entity/is_idle unless predicate nice_mobs:entity/is_falling run function nice_mobs:penguin/behavior/idle
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"walk"} if data entity @s data.nice_mobs{is_bartering: 0b} if predicate nice_mobs:entity/is_walking unless predicate nice_mobs:entity/is_falling run function nice_mobs:penguin/behavior/walk
execute if entity @e[type=player,distance=..32] unless data entity @s data.nice_mobs{animation:"fall"} if data entity @s data.nice_mobs{is_bartering: 0b} if predicate nice_mobs:entity/is_falling run function nice_mobs:penguin/behavior/fall

#apply textures when hurt or not
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt: 0b} unless predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:penguin/behavior/hurt/start with entity @s data.nice_mobs
execute if entity @e[type=player,distance=..32] if data entity @s data.nice_mobs{hurt: 1b} if predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:penguin/behavior/hurt/end with entity @s data.nice_mobs

#give speed on ice
execute if predicate nice_mobs:entity/is_walking if predicate nice_mobs:location/stepping_on_ice run effect give @s minecraft:speed 3 3 true 

#bartering functions
execute as @s if data entity @s data.nice_mobs{action: 1b} run scoreboard players add @s nice_mobs.entity.generic_timer 1
execute as @s[scores={nice_mobs.entity.generic_timer=5}] run function nice_mobs:penguin/behavior/bartering/end
execute as @s[scores={nice_mobs.entity.generic_timer=120..}] run function nice_mobs:penguin/behavior/bartering/reset
