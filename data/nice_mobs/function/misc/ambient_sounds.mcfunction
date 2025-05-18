schedule function nice_mobs:misc/ambient_sounds 5s

execute as @e[type=pig,tag=nice_mobs.snail.vehicle,tag=!is_hiding,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.silverfish.ambient ambient @a ~ ~ ~ .3 .7
execute as @e[type=pig,tag=nice_mobs.penguin.vehicle,tag=!is_bartering,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.chicken.ambient neutral @a ~ ~ ~ .3 .2
execute as @e[type=pig,tag=nice_mobs.mushling.vehicle,tag=!is_digging,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.armadillo.ambient neutral @a ~ ~ ~ .5 2
execute as @e[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.villager.ambient neutral @a ~ ~ ~ .5 .5
execute as @e[type=creeper,tag=nice_mobs.glare.vehicle,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.shulker.ambient neutral @a ~ ~ ~ .3 .5
execute as @e[type=pig,tag=nice_mobs.rat.vehicle,tag=!is_hurt,tag=!is_eating,predicate=eden:percentages/10] at @s run playsound minecraft:entity.bat.ambient neutral @a ~ ~ ~ .5 1.5
execute as @e[type=vex,tag=nice_mobs.pufftail.vehicle,tag=!is_hurt,predicate=eden:percentages/33] at @s run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ .7 .5
execute as @e[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.camel.ambient neutral @a ~ ~ ~ .6 .5
execute as @e[type=wither_skeleton,tag=nice_mobs.jellyfish.vehicle,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.glow_squid.ambient neutral @a ~ ~ ~ .6 1.5
execute as @e[type=pig,tag=nice_mobs.enderkin.vehicle,tag=!is_hurt,predicate=eden:percentages/10] at @s run playsound minecraft:entity.enderman.ambient neutral @a ~ ~ ~ .3 1.5