
tag @s remove is_hurt


execute as @s[tag=nice_mobs.snail.brown] on passengers run function animated_java:snail/variants/default/apply
execute as @s[tag=nice_mobs.snail.blue] on passengers run function animated_java:snail/variants/blue/apply
execute as @s[tag=nice_mobs.snail.cyan] on passengers run function animated_java:snail/variants/cyan/apply
execute as @s[tag=nice_mobs.snail.gray] on passengers run function animated_java:snail/variants/gray/apply
execute as @s[tag=nice_mobs.snail.green] on passengers run function animated_java:snail/variants/green/apply
execute as @s[tag=nice_mobs.snail.pink] on passengers run function animated_java:snail/variants/pink/apply
execute as @s[tag=nice_mobs.snail.purple] on passengers run function animated_java:snail/variants/purple/apply
execute as @s[tag=nice_mobs.snail.red] on passengers run function animated_java:snail/variants/red/apply
execute as @s[tag=nice_mobs.snail.yellow] on passengers run function animated_java:snail/variants/yellow/apply

tag @s add not_hurt
scoreboard players set @s nice_mobs.entity.is 0
