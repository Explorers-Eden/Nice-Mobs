tag @s remove is_walking

execute on passengers run function animated_java:bloomer/animations/walk/stop
execute on passengers run function animated_java:bloomer/animations/explode/stop
execute on passengers run function animated_java:bloomer/animations/idle/play

tag @s add is_idle