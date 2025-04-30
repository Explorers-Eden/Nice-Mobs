tag @s remove is_hurt

execute as @s[tag=nice_mobs.butterfly.monarch] on passengers run function animated_java:butterfly/variants/default/apply

scoreboard players set @s nice_mobs.entity.is_hurt 0
tag @s add not_hurt