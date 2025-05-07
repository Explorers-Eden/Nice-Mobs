data modify entity @s Motion[1] set value 0.25
playsound minecraft:entity.glow_squid.hurt neutral @a ~ ~ ~ .6 1.5
data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:jellyfish/variants/$(variant)_hurt/apply