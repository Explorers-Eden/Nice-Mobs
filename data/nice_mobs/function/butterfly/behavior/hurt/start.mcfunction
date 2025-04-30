tag @s remove not_hurt

execute as @s[tag=nice_mobs.butterfly.monarch] on passengers run function animated_java:butterfly/variants/default_hurt/apply

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt
