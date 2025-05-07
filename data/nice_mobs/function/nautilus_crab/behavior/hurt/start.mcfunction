playsound minecraft:entity.axolotl.hurt neutral @a ~ ~ ~ .5 .5

data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:nautilus_crab/variants/$(variant)_hurt/apply