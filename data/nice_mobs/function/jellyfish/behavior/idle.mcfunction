tag @s remove is_walking

execute on passengers run function animated_java:jellyfish/animations/walk/stop
execute on passengers run function animated_java:jellyfish/animations/idle/play

tag @s add is_idle