schedule function nice_mobs:misc/run 4t

#modify general behavior
execute as @e[type=pig,tag=nice_mobs.base] run function nice_mobs:misc/modify_entity_data

#remove zombified piglin
execute as @e[type=zombified_piglin,tag=nice_mobs.base] run function nice_mobs:misc/kill