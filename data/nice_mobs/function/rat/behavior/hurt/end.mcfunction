
tag @s remove is_hurt

tag @s add not_hurt
scoreboard players set @s nice_mobs.entity.is 0

execute as @s[tag=nice_mobs.rat.brown] on passengers run return run function animated_java:rat/variants/default/apply