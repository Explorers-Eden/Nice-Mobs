tag @s remove is_walking
tag @s remove is_idle

execute on passengers run function animated_java:penguin/animations/walk/stop
execute on passengers run function animated_java:penguin/animations/idle/stop
execute on passengers run function animated_java:penguin/animations/fall/play

tag @s add is_falling