tag @s remove not_hurt

execute on passengers run function animated_java:mushling/variants/brown_hurt/apply
playsound minecraft:entity.armadillo.hurt neutral @a ~ ~ ~ .5 2

tag @s add is_hurt
