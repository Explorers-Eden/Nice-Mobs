tag @s remove is_walking

execute on passengers run function animated_java:mushling/animations/walk/stop
execute on passengers run function animated_java:mushling/animations/dig/stop
execute on passengers run function animated_java:mushling/animations/idle/play

tag @s add is_idle