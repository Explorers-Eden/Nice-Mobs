tag @s remove is_hurt

execute on passengers run function animated_java:pufftail/variants/default/apply

scoreboard players set @s nice_mobs.entity.is_hurt 0
tag @s add not_hurt