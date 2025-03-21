tag @s add is_walking
tag @s remove is_idle

execute on passengers run function animated_java:rat/animations/idle/stop
execute on passengers run function animated_java:rat/animations/walk/play