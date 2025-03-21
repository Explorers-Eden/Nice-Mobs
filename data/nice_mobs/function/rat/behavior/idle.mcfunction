tag @s add is_idle
tag @s remove is_walking

execute on passengers run function animated_java:rat/animations/walk/stop
execute on passengers run function animated_java:rat/animations/idle/play