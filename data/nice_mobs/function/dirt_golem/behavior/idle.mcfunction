tag @s add is_idle
tag @s remove is_walking
tag @s remove is_planting

execute on passengers run function animated_java:dirt_golem/animations/walk/stop
execute on passengers run function animated_java:dirt_golem/animations/plant/stop
execute on passengers run function animated_java:dirt_golem/animations/idle/play