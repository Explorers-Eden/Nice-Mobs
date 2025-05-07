playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ .7 .5
function nice_mobs:pufftail/bossbar/update/init
data modify entity @s data.nice_mobs.hurt set value 1b
$execute on passengers run return run function animated_java:pufftail/variants/$(variant)_hurt/apply