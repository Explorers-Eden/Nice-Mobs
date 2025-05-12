data modify entity @s data.nice_mobs.hurt set value 1b

playsound minecraft:entity.mule.hurt neutral @a ~ ~ ~ .5 1.4

$execute on passengers run return run function animated_java:hedgehog/variants/$(variant)_hurt/apply