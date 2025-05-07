playsound minecraft:entity.shulker.hurt neutral @a ~ ~ ~ .3 .5

data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:glare/variants/$(variant)_hurt/apply