schedule function nice_mobs:misc/run 6t

#clear lightblocks
execute as @e[type=marker,tag=nice_mobs.glare.lightblock] at @s unless entity @e[type=area_effect_cloud,tag=nice_mobs.glare.lightblock,distance=..0.5] run function nice_mobs:misc/kill_glare_lightblocks

#cancel if no mob is present
execute unless entity @e[type=#eden:is_nice_mobs_vehicle,tag=nice_mobs.base] run return fail

#clear glowing
effect clear @e[type=#eden:is_nice_mobs_vehicle,tag=nice_mobs.base] minecraft:glowing

#modify general behavior
execute as @e[type=pig,tag=nice_mobs.base] run function nice_mobs:misc/modify_pig_data

#remove zombified piglin
execute as @e[type=zombified_piglin,tag=nice_mobs.base] run function nice_mobs:misc/kill

#remove home data villager vehicles
execute as @e[type=villager,tag=nice_mobs.base] run data remove entity @s Brain.memories."minecraft:home"

#remove powered from bloomer
execute as @e[type=creeper,tag=nice_mobs.bloomer.vehicle] run data modify entity @s powered set value 0b