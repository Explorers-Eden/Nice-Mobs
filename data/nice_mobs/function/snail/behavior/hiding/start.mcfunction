tag @s add is_hiding
tag @s remove is_walking
tag @s remove is_idle

execute on passengers run function animated_java:snail/animations/walk/stop
execute on passengers run function animated_java:snail/animations/idle/stop
execute on passengers run function animated_java:snail/animations/hide/play
