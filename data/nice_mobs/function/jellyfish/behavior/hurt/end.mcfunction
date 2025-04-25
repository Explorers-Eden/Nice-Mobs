tag @s remove is_hurt

execute as @s[tag=nice_mobs.jellyfish.pink] on passengers run function animated_java:jellyfish/variants/default/apply
execute as @s[tag=nice_mobs.jellyfish.blue] on passengers run function animated_java:jellyfish/variants/blue/apply
execute as @s[tag=nice_mobs.jellyfish.cyan] on passengers run function animated_java:jellyfish/variants/cyan/apply
execute as @s[tag=nice_mobs.jellyfish.orange] on passengers run function animated_java:jellyfish/variants/orange/apply
execute as @s[tag=nice_mobs.jellyfish.white] on passengers run function animated_java:jellyfish/variants/white/apply
execute as @s[tag=nice_mobs.jellyfish.yellow] on passengers run function animated_java:jellyfish/variants/yellow/apply

scoreboard players set @s nice_mobs.entity.is 0
tag @s add not_hurt