tag @s remove not_hurt

#playsound minecraft:entity.chicken.hurt neutral @a ~ ~ ~ .3 .2

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt

execute as @s[tag=nice_mobs.tuff_golem.blue] on passengers run return run function animated_java:tuff_golem/variants/default_hurt/apply