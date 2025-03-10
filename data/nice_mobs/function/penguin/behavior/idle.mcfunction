tag @s remove is_walking
tag @s remove is_falling

execute on passengers run function animated_java:penguin/animations/walk/stop
execute on passengers run function animated_java:penguin/animations/fall/stop
execute on passengers run function animated_java:penguin/animations/idle/play

tag @s add is_idle