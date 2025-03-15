schedule function nice_mobs:misc/run 4t

#modify general behavior
execute as @e[type=pig,tag=nice_mobs.base] run function nice_mobs:misc/modify_entity_data

#remove zombified piglin
execute as @e[type=zombified_piglin,tag=nice_mobs.base] run function nice_mobs:misc/kill

#remove home data villager vehicles
execute as @e[type=villager,tag=nice_mobs.base] run data remove entity @s Brain.memories."minecraft:home"