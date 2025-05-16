function nice_mobs:enderkin/behavior/teleport/init

playsound minecraft:entity.enderman.hurt neutral @a ~ ~ ~ .5 1.5
data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:enderkin/variants/$(variant)_hurt/apply