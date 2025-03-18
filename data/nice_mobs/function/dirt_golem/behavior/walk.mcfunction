tag @s add is_walking
tag @s remove is_idle
tag @s remove is_planting

execute on passengers run function animated_java:dirt_golem/animations/idle/stop
execute on passengers run function animated_java:dirt_golem/animations/plant/stop
execute on passengers run function animated_java:dirt_golem/animations/walk/play