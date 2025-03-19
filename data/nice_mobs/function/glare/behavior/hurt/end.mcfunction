tag @s remove is_hurt

execute as @s[tag=nice_mobs.glare.moss] on passengers run function animated_java:glare/variants/default/apply
execute as @s[tag=nice_mobs.glare.pale_moss] on passengers run function animated_java:glare/variants/pale/apply

scoreboard players set @s nice_mobs.entity.is_hurt 0
tag @s add not_hurt