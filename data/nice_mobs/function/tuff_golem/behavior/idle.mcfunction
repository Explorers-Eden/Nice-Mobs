tag @s remove is_walking

execute on passengers run function animated_java:tuff_golem/animations/walk/stop
execute on passengers run function animated_java:tuff_golem/animations/idle/play

tag @s add is_idle