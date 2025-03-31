tag @s remove not_hurt

execute as @s[tag=nice_mobs.nautilus_crab.red] on passengers run function animated_java:nautilus_crab/variants/default_hurt/apply
execute as @s[tag=nice_mobs.nautilus_crab.blue] on passengers run function animated_java:nautilus_crab/variants/blue_hurt/apply
execute as @s[tag=nice_mobs.nautilus_crab.orange] on passengers run function animated_java:nautilus_crab/variants/orange_hurt/apply
execute as @s[tag=nice_mobs.nautilus_crab.pink] on passengers run function animated_java:nautilus_crab/variants/pink_hurt/apply
execute as @s[tag=nice_mobs.nautilus_crab.purple] on passengers run function animated_java:nautilus_crab/variants/purple_hurt/apply
execute as @s[tag=nice_mobs.nautilus_crab.green] on passengers run function animated_java:nautilus_crab/variants/green_hurt/apply

playsound minecraft:entity.axolotl.hurt neutral @a ~ ~ ~ .5 .5

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt
