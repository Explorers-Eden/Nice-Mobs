tag @s remove is_idle

execute on passengers run function animated_java:mushling/animations/idle/stop
execute on passengers run function animated_java:mushling/animations/dig/stop
execute on passengers run function animated_java:mushling/animations/walk/play

tag @s add is_walking