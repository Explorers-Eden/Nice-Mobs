tag @s remove not_hurt

playsound minecraft:entity.evoker.hurt neutral @a ~ ~ ~ .5 1.5

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt

execute as @s on passengers run return run function animated_java:dirt_golem/variants/default_hurt/apply