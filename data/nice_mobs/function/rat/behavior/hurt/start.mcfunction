playsound minecraft:entity.bat.hurt ambient @a ~ ~ ~ .5 1.5
data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:rat/variants/$(variant)_hurt/apply