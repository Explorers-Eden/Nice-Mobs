loot spawn ^ ^.1 ^.1 loot eden:gameplay/enderkin_bartering
execute on passengers run function animated_java:enderkin/animations/bartering/stop
data modify entity @s data.nice_mobs.animation set value "default"
data modify entity @s data.nice_mobs.is_bartering set value 0b
playsound minecraft:entity.enderman.scream neutral @a ~ ~ ~ .4 1.7