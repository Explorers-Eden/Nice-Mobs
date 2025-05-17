loot spawn ^ ^.1 ^.1 loot eden:gameplay/penguin_bartering
advancement grant @a[distance=..8] only nice_mobs:adventure/barter_with_penguin
execute on passengers run function animated_java:penguin/animations/bartering/stop
data modify entity @s data.nice_mobs.animation set value "default"
data modify entity @s data.nice_mobs.is_bartering set value 0b
playsound minecraft:entity.parrot.eat neutral @a ~ ~ ~ .6 .2