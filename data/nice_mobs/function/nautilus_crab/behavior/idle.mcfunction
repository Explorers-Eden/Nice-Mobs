tag @s remove is_walking

execute on passengers run function animated_java:nautilus_crab/animations/walk/stop
execute on passengers run function animated_java:nautilus_crab/animations/dig/stop
execute on passengers run function animated_java:nautilus_crab/animations/idle/play

tag @s add is_idle