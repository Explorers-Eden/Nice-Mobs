tag @s add is_walking
tag @s add is_falling
tag @s add is_idle
tag @s add is_eating

effect give @s minecraft:slowness 2 255 true

execute on passengers run function animated_java:cruncher/animations/walk/stop
execute on passengers run function animated_java:cruncher/animations/fall/stop
execute on passengers run function animated_java:cruncher/animations/idle/stop
execute on passengers run function animated_java:cruncher/animations/eat/play

scoreboard players set @s nice_mobs.entity.action 1

playsound minecraft:entity.camel.eat neutral @a ~ ~ ~ .7 .5

particle block{block_state:"minecraft:dripstone_block"} ^ ^.3 ^.4 0 0 0 0 15 normal