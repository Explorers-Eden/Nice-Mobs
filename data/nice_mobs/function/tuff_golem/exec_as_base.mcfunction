#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.tuff_golem.root,distance=..2] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle/fall animations
execute as @s[tag=!is_idle] if predicate eden:entity/is_idle run function nice_mobs:tuff_golem/behavior/idle
execute as @s[tag=!is_walking] if predicate eden:entity/is_walking run function nice_mobs:tuff_golem/behavior/walk

#apply textures when hurt or not
#execute as @s[tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:tuff_golem/behavior/hurt/start
#execute as @s[tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:tuff_golem/behavior/hurt/end