playsound minecraft:entity.silverfish.hurt ambient @a ~ ~ ~ .3 .7
data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:snail/variants/$(variant)_hurt/apply