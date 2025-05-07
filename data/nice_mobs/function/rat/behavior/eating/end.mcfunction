loot spawn ^ ^.1 ^.1 loot eden:gameplay/rat_eating
data modify entity @s data.nice_mobs.animation set value "default"
data modify entity @s data.nice_mobs.is_eating set value 0b
execute on passengers run function animated_java:rat/animations/eat/stop