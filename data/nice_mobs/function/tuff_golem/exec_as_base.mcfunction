#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.tuff_golem.root,distance=..2] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute as @s[tag=!is_idle,tag=!is_holding,tag=!is_returning] if predicate eden:entity/is_idle run function nice_mobs:tuff_golem/behavior/idle
execute as @s[tag=!is_walking,tag=!is_holding,tag=!is_returning] if predicate eden:entity/is_walking run function nice_mobs:tuff_golem/behavior/walk

#apply textures when hurt or not
execute as @s[tag=!is_holding,tag=!is_hurt,tag=!is_returning] unless predicate eden:entity/has_no_hurttime run function nice_mobs:tuff_golem/behavior/hurt/start
execute as @s[tag=!is_holding,tag=!not_hurt,tag=!is_returning,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:tuff_golem/behavior/hurt/end

#item hold behaviors
execute as @s[scores={nice_mobs.entity.action=2}] run scoreboard players add @s nice_mobs.entity.timer 1
execute as @s[scores={nice_mobs.entity.timer=2..}] run function nice_mobs:tuff_golem/behavior/remove_holding_data

execute as @s[scores={nice_mobs.entity.action=2},tag=!is_returning] run function nice_mobs:tuff_golem/behavior/end_holding
execute as @s[scores={nice_mobs.entity.action=1},tag=!is_holding] run function nice_mobs:tuff_golem/behavior/start_holding