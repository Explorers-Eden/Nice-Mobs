tag @s remove is_walking

execute on passengers run function animated_java:glare/animations/walk/stop
execute on passengers run function animated_java:glare/animations/idle/play

tag @s add is_idle