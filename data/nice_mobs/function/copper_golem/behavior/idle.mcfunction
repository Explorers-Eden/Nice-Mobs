tag @s remove is_walking
tag @s remove is_walking_angry
tag @s remove is_idle_angry

execute on passengers run function animated_java:copper_golem/animations/walk/stop
execute on passengers run function animated_java:copper_golem/animations/idle_angry/stop
execute on passengers run function animated_java:copper_golem/animations/walk_angry/stop
execute on passengers run function animated_java:copper_golem/animations/idle/play

tag @s add is_idle