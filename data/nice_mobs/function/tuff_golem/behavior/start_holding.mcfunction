tag @s add is_holding
tag @s remove is_returning
tag @s remove is_walking
tag @s remove is_idle

execute on passengers run function animated_java:tuff_golem/animations/walk/stop
execute on passengers run function animated_java:tuff_golem/animations/idle/stop
execute on passengers run function animated_java:tuff_golem/animations/end_holding/stop
execute on passengers run function animated_java:tuff_golem/animations/start_holding/play

data modify entity @s Invulnerable set value 1b
data modify entity @s NoAI set value 1b

#summon armor_stand ~ ~ ~ {NoGravity:0b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["nice_mobs.tuff_golem.display"],attributes:[{id:"minecraft:scale",base:0.01}],DisabledSlots:4144959}
#ride @s mount @n[type=minecraft:armor_stand,tag=nice_mobs.tuff_golem.display]

scoreboard players reset @s nice_mobs.entity.action