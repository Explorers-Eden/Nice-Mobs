tag @s remove is_idle

execute on passengers run function animated_java:pufftail/animations/idle/stop
execute on passengers run function animated_java:pufftail/animations/fly/play

tag @s add is_flying