tag @s remove is_idle

execute on passengers run function animated_java:penguin/animations/idle/stop
execute on passengers run function animated_java:penguin/animations/dig/stop
execute on passengers run function animated_java:penguin/animations/walk/play

tag @s add is_walking