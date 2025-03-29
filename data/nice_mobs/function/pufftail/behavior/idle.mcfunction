tag @s remove is_flying

execute on passengers run function animated_java:pufftail/animations/fly/stop
execute on passengers run function animated_java:pufftail/animations/idle/play

tag @s add is_idle