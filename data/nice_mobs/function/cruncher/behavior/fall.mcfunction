tag @s remove is_walking
tag @s remove is_idle

execute on passengers run function animated_java:cruncher/animations/walk/stop
execute on passengers run function animated_java:cruncher/animations/idle/stop
execute on passengers run function animated_java:cruncher/animations/fall/play

tag @s add is_falling