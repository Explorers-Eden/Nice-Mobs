tag @s remove is_walking
tag @s remove is_idle
tag @s remove is_walking_angry

execute on passengers run function animated_java:copper_golem/animations/walk/stop
execute on passengers run function animated_java:copper_golem/animations/idle/stop
execute on passengers run function animated_java:copper_golem/animations/walk_angry/stop
execute on passengers run function animated_java:copper_golem/animations/idle_angry/play

tag @s add is_idle_angry