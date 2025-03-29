rotate @s facing entity @p[distance=..48] eyes

execute if block ~ ~ ~ air run particle dripping_water ~ ~ ~ .2 .2 .2 0 2
execute if block ~ ~ ~ air run tp @n[type=tnt,tag=nice_mobs.pufftail.projectile] ~ ~ ~
$execute unless block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.078 0.725 0.98 1.5",Radius:1.5f,Duration:60,potion_contents:{custom_color:3390463,custom_effects:[{id:"minecraft:$(effect)",amplifier:2b,duration:560}]}}

execute unless block ~ ~ ~ air run return fail
execute unless entity @s[distance=..48] run return fail
execute positioned ^ ^ ^.1 run function nice_mobs:pufftail/behavior/attack/shoot with storage eden:temp nice_mobs.pufftail