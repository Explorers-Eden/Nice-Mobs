schedule function nice_mobs:entity_ambient_sounds 5s

#Snail
execute as @e[type=zombie_horse,tag=nice_mobs.snail.vehicle,tag=!is_hurt,predicate=eden:percentages/2-5] at @s run playsound entity.silverfish.ambient ambient @a ~ ~ ~ .4 .7
execute as @e[type=zombie_horse,tag=nice_mobs.snail.vehicle,tag=!is_hiding,predicate=eden:percentages/2-5] at @s run playsound entity.silverfish.ambient ambient @a ~ ~ ~ .4 .7

#Penguin
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_hurt,predicate=eden:percentages/2-5] at @s run playsound minecraft:entity.chicken.ambient neutral @a ~ ~ ~ .6 .2
execute as @e[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!is_bartering,predicate=eden:percentages/2-5] at @s run playsound minecraft:entity.chicken.ambient neutral @a ~ ~ ~ .6 .2

#Mushling
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!is_hurt,predicate=eden:percentages/2-5] at @s run playsound minecraft:entity.armadillo.ambient neutral @a ~ ~ ~ .5 2
execute as @e[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!is_digging,predicate=eden:percentages/2-5] at @s run playsound minecraft:entity.armadillo.ambient neutral @a ~ ~ ~ .5 2