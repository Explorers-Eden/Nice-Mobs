tag @s remove is_idle
tag @s remove is_exploding

execute on passengers run function animated_java:bloomer/animations/idle/stop
execute on passengers run function animated_java:bloomer/animations/explode/stop
execute on passengers run function animated_java:bloomer/animations/walk/play

function nice_mobs:bloomer/behavior/score_reset

tag @s add is_walking