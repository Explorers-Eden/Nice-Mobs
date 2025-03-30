tag @s remove not_hurt

playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ .7 .5
execute on passengers run function animated_java:pufftail/variants/default_hurt/apply

function nice_mobs:pufftail/bossbar/update/init

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt
