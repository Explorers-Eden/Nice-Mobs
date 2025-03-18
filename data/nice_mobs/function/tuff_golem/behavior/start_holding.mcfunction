tag @s add is_holding
tag @s remove is_returning
tag @s remove is_walking
tag @s remove is_idle

execute on passengers run function animated_java:tuff_golem/animations/walk/stop
execute on passengers run function animated_java:tuff_golem/animations/idle/stop
execute on passengers run function animated_java:tuff_golem/animations/end_holding/stop
execute on passengers run function animated_java:tuff_golem/animations/start_holding/play

data modify entity @s Invulnerable set value 1b
effect give @s minecraft:slowness infinite 255 true
#data modify entity @s NoAI set value 1b

scoreboard players reset @s nice_mobs.entity.action