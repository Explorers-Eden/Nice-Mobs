tag @s remove not_hurt

playsound minecraft:entity.silverfish.hurt ambient @a ~ ~ ~ .3 .7

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt

execute as @s[tag=nice_mobs.rat.brown] on passengers run return run function animated_java:rat/variants/default_hurt/apply