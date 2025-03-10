tag @s remove is_walking
tag @s remove is_falling
tag @s remove is_idle

loot spawn ^ ^.1 ^.1 loot eden:gameplay/penguin_bartering

execute on passengers run function animated_java:penguin/animations/bartering/stop
playsound minecraft:entity.parrot.eat neutral @a ~ ~ ~ .6 .2