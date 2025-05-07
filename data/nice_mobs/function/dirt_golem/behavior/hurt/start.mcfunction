data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:dirt_golem/variants/$(variant)_hurt/apply
playsound minecraft:entity.evoker.hurt neutral @a ~ ~ ~ .5 1.5