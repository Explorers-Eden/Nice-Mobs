tag @s remove not_hurt

playsound minecraft:entity.armadillo.hurt neutral @a ~ ~ ~ .5 2

execute as @s[tag=nice_mobs.mushling.red] on passengers run function animated_java:mushling/variants/default_hurt/apply
execute as @s[tag=nice_mobs.mushling.brown] on passengers run function animated_java:mushling/variants/brown_hurt/apply

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt