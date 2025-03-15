tag @s remove is_idle

execute on passengers run function animated_java:tuff_golem/animations/idle/stop
execute on passengers run function animated_java:tuff_golem/animations/walk/play

tag @s add is_walking