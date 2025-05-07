playsound minecraft:entity.chicken.hurt neutral @a ~ ~ ~ .3 .2
data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:penguin/variants/$(variant)_hurt/apply