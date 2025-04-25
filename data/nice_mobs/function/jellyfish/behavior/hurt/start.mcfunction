tag @s remove not_hurt

execute as @s[tag=nice_mobs.jellyfish.pink] on passengers run function animated_java:jellyfish/variants/default_hurt/apply
execute as @s[tag=nice_mobs.jellyfish.blue] on passengers run function animated_java:jellyfish/variants/blue_hurt/apply
execute as @s[tag=nice_mobs.jellyfish.cyan] on passengers run function animated_java:jellyfish/variants/cyan_hurt/apply
execute as @s[tag=nice_mobs.jellyfish.orange] on passengers run function animated_java:jellyfish/variants/orange_hurt/apply
execute as @s[tag=nice_mobs.jellyfish.white] on passengers run function animated_java:jellyfish/variants/white_hurt/apply
execute as @s[tag=nice_mobs.jellyfish.yellow] on passengers run function animated_java:jellyfish/variants/yellow_hurt/apply

data modify entity @s Motion[1] set value 0.25
playsound minecraft:entity.glow_squid.hurt neutral @a ~ ~ ~ .6 1.5
scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt
