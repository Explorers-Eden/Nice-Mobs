
tag @s remove is_hurt

tag @s add not_hurt
scoreboard players set @s nice_mobs.entity.is 0

execute as @s[tag=nice_mobs.rat.brown] on passengers run return run function animated_java:rat/variants/default/apply
execute as @s[tag=nice_mobs.rat.light_brown] on passengers run return run function animated_java:rat/variants/light_brown/apply
execute as @s[tag=nice_mobs.rat.white] on passengers run return run function animated_java:rat/variants/white/apply
execute as @s[tag=nice_mobs.rat.gray] on passengers run return run function animated_java:rat/variants/gray/apply
execute as @s[tag=nice_mobs.rat.black] on passengers run return run function animated_java:rat/variants/black/apply