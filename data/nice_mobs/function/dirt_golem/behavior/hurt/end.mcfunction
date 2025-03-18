tag @s remove is_hurt

scoreboard players set @s nice_mobs.entity.is_hurt 0
tag @s add not_hurt

execute as @s on passengers run return run function animated_java:dirt_golem/variants/default/apply