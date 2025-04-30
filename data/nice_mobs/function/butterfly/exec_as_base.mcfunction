#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.butterfly.root,distance=..3] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute on passengers run data modify entity @s Rotation[1] set value 0f

#apply textures when hurt or not
execute as @s[tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:butterfly/behavior/hurt/start
execute as @s[tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:butterfly/behavior/hurt/end

#give player effect
execute if data entity @s {HasNectar:1b} if entity @e[type=player,distance=..3] run function nice_mobs:butterfly/behavior/give_effect