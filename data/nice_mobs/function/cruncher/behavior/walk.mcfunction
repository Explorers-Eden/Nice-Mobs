tag @s remove is_idle
tag @s remove is_falling

execute on passengers run function animated_java:cruncher/animations/idle/stop
execute on passengers run function animated_java:cruncher/animations/fall/stop
execute on passengers run function animated_java:cruncher/animations/walk/play

tag @s add is_walking