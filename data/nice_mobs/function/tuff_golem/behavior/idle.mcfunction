tag @s add is_idle
tag @s remove is_walking
tag @s remove is_holding
tag @s remove is_returning

execute on passengers run function animated_java:tuff_golem/animations/walk/stop
execute on passengers run function animated_java:tuff_golem/animations/start_holding/stop
execute on passengers run function animated_java:tuff_golem/animations/end_holding/stop
execute on passengers run function animated_java:tuff_golem/animations/idle/play