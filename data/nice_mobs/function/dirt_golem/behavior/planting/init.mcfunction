tag @s add is_idle
tag @s add is_planting
tag @s remove is_walking

execute on passengers run function animated_java:dirt_golem/animations/walk/stop
execute on passengers run function animated_java:dirt_golem/animations/idle/stop
execute on passengers run function animated_java:dirt_golem/animations/plant/play

effect give @s minecraft:slowness 3 255 true