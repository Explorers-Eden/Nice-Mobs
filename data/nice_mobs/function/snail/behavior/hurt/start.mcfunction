tag @s remove not_hurt

playsound minecraft:entity.silverfish.hurt ambient @a ~ ~ ~ .3 .7

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt

execute as @s[tag=nice_mobs.snail.brown] on passengers run return run function animated_java:snail/variants/default_hurt/apply
execute as @s[tag=nice_mobs.snail.blue] on passengers run return run function animated_java:snail/variants/blue_hurt/apply
execute as @s[tag=nice_mobs.snail.cyan] on passengers run return run function animated_java:snail/variants/cyan_hurt/apply
execute as @s[tag=nice_mobs.snail.gray] on passengers run return run function animated_java:snail/variants/gray_hurt/apply
execute as @s[tag=nice_mobs.snail.green] on passengers run return run function animated_java:snail/variants/green_hurt/apply
execute as @s[tag=nice_mobs.snail.pink] on passengers run return run function animated_java:snail/variants/pink_hurt/apply
execute as @s[tag=nice_mobs.snail.purple] on passengers run return run function animated_java:snail/variants/purple_hurt/apply
execute as @s[tag=nice_mobs.snail.red] on passengers run return run function animated_java:snail/variants/red_hurt/apply
execute as @s[tag=nice_mobs.snail.yellow] on passengers run return run function animated_java:snail/variants/yellow_hurt/apply