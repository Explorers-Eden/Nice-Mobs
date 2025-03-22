tag @s add is_walking
tag @s add is_idle
tag @s add is_eating

effect give @s minecraft:slowness 6 255 true

execute on passengers run function animated_java:rat/animations/walk/stop
execute on passengers run function animated_java:rat/animations/idle/stop
execute on passengers run function animated_java:rat/animations/eat/play

scoreboard players set @s nice_mobs.entity.action 1