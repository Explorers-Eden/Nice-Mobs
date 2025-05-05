data modify entity @s data.nice_mobs.hurt set value 1b

playsound minecraft:entity.armadillo.hurt neutral @a ~ ~ ~ .5 2

$execute on passengers run return run function animated_java:mushling/variants/$(variant)_hurt/apply