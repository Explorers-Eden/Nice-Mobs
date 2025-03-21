tag @s remove not_hurt

playsound minecraft:entity.bat.hurt ambient @a ~ ~ ~ .5 1.5

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt

execute as @s[tag=nice_mobs.rat.brown] on passengers run return run function animated_java:rat/variants/default_hurt/apply
execute as @s[tag=nice_mobs.rat.light_brown] on passengers run return run function animated_java:rat/variants/light_brown_hurt/apply
execute as @s[tag=nice_mobs.rat.white] on passengers run return run function animated_java:rat/variants/white_hurt/apply
execute as @s[tag=nice_mobs.rat.gray] on passengers run return run function animated_java:rat/variants/gray_hurt/apply
execute as @s[tag=nice_mobs.rat.black] on passengers run return run function animated_java:rat/variants/black_hurt/apply