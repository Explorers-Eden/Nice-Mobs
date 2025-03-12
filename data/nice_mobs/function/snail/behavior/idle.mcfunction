tag @s add is_idle
tag @s remove is_walking

execute on passengers run function animated_java:snail/animations/walk/stop
execute on passengers run function animated_java:snail/animations/hide/stop
execute on passengers run function animated_java:snail/animations/idle/play