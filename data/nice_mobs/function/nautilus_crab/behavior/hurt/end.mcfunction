tag @s remove is_hurt

execute as @s[tag=nice_mobs.nautilus_crab.red] on passengers run function animated_java:nautilus_crab/variants/default/apply
execute as @s[tag=nice_mobs.nautilus_crab.blue] on passengers run function animated_java:nautilus_crab/variants/blue/apply
execute as @s[tag=nice_mobs.nautilus_crab.orange] on passengers run function animated_java:nautilus_crab/variants/orange/apply
execute as @s[tag=nice_mobs.nautilus_crab.pink] on passengers run function animated_java:nautilus_crab/variants/pink/apply
execute as @s[tag=nice_mobs.nautilus_crab.purple] on passengers run function animated_java:nautilus_crab/variants/purple/apply
execute as @s[tag=nice_mobs.nautilus_crab.green] on passengers run function animated_java:nautilus_crab/variants/green/apply

scoreboard players set @s nice_mobs.entity.is_hurt 0
tag @s add not_hurt