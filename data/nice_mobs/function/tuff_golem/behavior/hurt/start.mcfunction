playsound minecraft:entity.villager.hurt neutral @a ~ ~ ~ .5 .5
data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:tuff_golem/variants/$(variant)_hurt/apply