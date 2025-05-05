data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:cruncher/variants/$(variant)_hurt/apply
playsound minecraft:entity.camel.hurt neutral @a ~ ~ ~ .4 .5