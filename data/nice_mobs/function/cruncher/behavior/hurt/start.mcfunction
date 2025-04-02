tag @s remove not_hurt

function nice_mobs:cruncher/behavior/hurt/summon_items/init

execute on passengers run function animated_java:cruncher/variants/default_hurt/apply

playsound minecraft:entity.camel.hurt neutral @a ~ ~ ~ .4 .5

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt
