tag @s remove is_walking
tag @s remove is_falling

execute on passengers run function animated_java:cruncher/animations/walk/stop
execute on passengers run function animated_java:cruncher/animations/fall/stop
execute on passengers run function animated_java:cruncher/animations/idle/play

tag @s add is_idle