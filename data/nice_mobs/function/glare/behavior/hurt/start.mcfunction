tag @s remove not_hurt

execute as @s[tag=nice_mobs.glare.moss] on passengers run function animated_java:glare/variants/default_hurt/apply
execute as @s[tag=nice_mobs.glare.pale_moss] on passengers run function animated_java:glare/variants/pale_hurt/apply
playsound minecraft:entity.shulker.hurt neutral @a ~ ~ ~ .3 .5

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt
