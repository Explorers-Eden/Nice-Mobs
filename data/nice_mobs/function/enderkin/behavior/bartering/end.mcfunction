loot spawn ^ ^.1 ^.1 loot nice_mobs:gameplay/enderkin_bartering
advancement grant @a[distance=..8] only nice_mobs:adventure/barter_with_enderkin
execute on passengers run function animated_java:enderkin/animations/bartering/stop
data modify entity @s data.nice_mobs.animation set value "default"
data modify entity @s data.nice_mobs.is_bartering set value 0b
playsound minecraft:entity.enderman.scream neutral @a ~ ~ ~ .4 1.7