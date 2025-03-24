#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.bloomer.root,distance=..2] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute as @s[tag=!is_idle,tag=!is_exploding] if predicate eden:entity/is_idle run function nice_mobs:bloomer/behavior/idle
execute as @s[tag=!is_walking] if predicate eden:entity/is_walking run function nice_mobs:bloomer/behavior/walk

#do explosion actions
execute as @s[tag=!is_exploding,scores={nice_mobs.entity.action=..0}] if predicate eden:entity/targeted_player_within_3_blocks run function nice_mobs:bloomer/behavior/primed
execute as @s[tag=!is_exploding,scores={nice_mobs.entity.action=..0}] if data entity @s {"ignited":1b} run function nice_mobs:bloomer/behavior/primed
execute as @s[scores={nice_mobs.entity.action=1}] run function nice_mobs:bloomer/behavior/flashing
execute unless entity @e[type=player,distance=..3] run function nice_mobs:bloomer/behavior/score_reset

#apply textures when hurt or not
execute as @s[tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:bloomer/behavior/hurt/start
execute as @s[tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:bloomer/behavior/hurt/end