tag @s remove is_idle

execute on passengers run function animated_java:nautilus_crab/animations/idle/stop
execute on passengers run function animated_java:nautilus_crab/animations/dig/stop
execute on passengers run function animated_java:nautilus_crab/animations/walk/play

tag @s add is_walking