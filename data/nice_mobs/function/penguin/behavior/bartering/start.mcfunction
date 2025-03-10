tag @s add is_walking
tag @s add is_falling
tag @s add is_idle
tag @s add is_bartering

effect give @s minecraft:slowness 2 255 true

execute on passengers run function animated_java:penguin/animations/walk/stop
execute on passengers run function animated_java:penguin/animations/fall/stop
execute on passengers run function animated_java:penguin/animations/idle/stop
execute on passengers run function animated_java:penguin/animations/bartering/play

scoreboard players set @s nice_mobs.penguin.bartering.action 1

particle minecraft:heart ~ ~.8 ~ .1 .1 .1 0 3