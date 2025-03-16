tag @s add is_returning
tag @s remove is_walking
tag @s remove is_idle
tag @s remove is_holding

execute on passengers run function animated_java:tuff_golem/animations/walk/stop
execute on passengers run function animated_java:tuff_golem/animations/idle/stop
execute on passengers run function animated_java:tuff_golem/animations/start_holding/stop
execute on passengers run function animated_java:tuff_golem/animations/end_holding/play