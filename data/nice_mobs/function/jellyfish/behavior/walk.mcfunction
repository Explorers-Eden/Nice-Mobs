tag @s remove is_idle

execute on passengers run function animated_java:jellyfish/animations/idle/stop
execute on passengers run function animated_java:jellyfish/animations/walk/play

tag @s add is_walking