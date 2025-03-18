#increase timers
execute as @s[scores={nice_mobs.entity.timer=960..},tag=is_planting] run scoreboard players add @s nice_mobs.entity.timer 1
execute as @s[predicate=eden:percentages/25,scores={nice_mobs.entity.timer=..959}] if predicate eden:entity/is_idle if predicate eden:location/stepping_on_dirt if block ~ ~ ~ #minecraft:air run scoreboard players add @s nice_mobs.entity.timer 1

#set rotations of passengers
execute as @s[tag=!is_planting] store result entity @n[type=item_display,tag=aj.dirt_golem.root,distance=..2] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000

#play walk/idle animations
execute as @s[tag=!is_idle,tag=!is_planting] if predicate eden:entity/is_idle run function nice_mobs:dirt_golem/behavior/idle
execute as @s[tag=!is_walking,tag=!is_planting] if predicate eden:entity/is_walking run function nice_mobs:dirt_golem/behavior/walk

#apply textures when hurt or not
execute as @s[tag=!is_holding,tag=!is_hurt] unless predicate eden:entity/has_no_hurttime run function nice_mobs:dirt_golem/behavior/hurt/start
execute as @s[tag=!is_holding,tag=!not_hurt,scores={nice_mobs.entity.is_hurt=1..}] if predicate eden:entity/has_no_hurttime run function nice_mobs:dirt_golem/behavior/hurt/end

#planting
execute as @s[scores={nice_mobs.entity.timer=960},tag=!is_planting] if predicate eden:location/stepping_on_dirt if block ~ ~ ~ #minecraft:air run function nice_mobs:dirt_golem/behavior/planting/init
execute as @s[scores={nice_mobs.entity.timer=963},tag=is_planting] if predicate eden:location/stepping_on_dirt if block ~ ~ ~ #minecraft:air run function nice_mobs:dirt_golem/behavior/planting/pre_planting
execute as @s[scores={nice_mobs.entity.timer=968..}] run function nice_mobs:dirt_golem/behavior/planting/end_planting