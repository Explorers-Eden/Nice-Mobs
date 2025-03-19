schedule function nice_mobs:misc/ambient_sounds 5s

#Snail
execute as @e[type=pig,tag=nice_mobs.snail.vehicle,tag=!is_hiding,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound entity.silverfish.ambient ambient @a ~ ~ ~ .3 .7

#Penguin
execute as @e[type=pig,tag=nice_mobs.penguin.vehicle,tag=!is_bartering,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.chicken.ambient neutral @a ~ ~ ~ .3 .2

#Mushling
execute as @e[type=pig,tag=nice_mobs.mushling.vehicle,tag=!is_digging,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.armadillo.ambient neutral @a ~ ~ ~ .5 2

#Tuff Golem
execute as @e[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.villager.ambient neutral @a ~ ~ ~ .5 .5

#Glare
execute as @e[type=creeper,tag=nice_mobs.glare.vehicle,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.shulker.ambient neutral @a ~ ~ ~ .3 .5