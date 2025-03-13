tag @s remove not_hurt

execute on passengers run function animated_java:penguin/variants/default_hurt/apply

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt
