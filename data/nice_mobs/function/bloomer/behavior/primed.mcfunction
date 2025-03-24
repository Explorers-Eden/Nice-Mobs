tag @s remove is_idle
tag @s remove is_walking

execute on passengers run function animated_java:bloomer/animations/idle/stop
execute on passengers run function animated_java:bloomer/animations/walk/stop
execute on passengers run function animated_java:bloomer/animations/explode/play

scoreboard players set @s nice_mobs.entity.action 1
execute on passengers run scoreboard players set @s nice_mobs.entity.action 1

tag @s add is_exploding