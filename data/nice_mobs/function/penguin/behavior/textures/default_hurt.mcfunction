tag @s remove not_hurt

execute on passengers run function animated_java:penguin/variants/default_hurt/apply
playsound minecraft:entity.chicken.hurt neutral @a ~ ~ ~ .5 2

tag @s add is_hurt
