tag @s remove is_walking

execute on passengers run function animated_java:penguin/animations/walk/stop
execute on passengers run function animated_java:penguin/animations/dig/stop
execute on passengers run function animated_java:penguin/animations/idle/play

tag @s add is_idle