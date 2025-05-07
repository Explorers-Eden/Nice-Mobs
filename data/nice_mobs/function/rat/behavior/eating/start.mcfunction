data modify entity @s data.nice_mobs.animation set value "eat"
data modify entity @s data.nice_mobs.action set value 1b
data modify entity @s data.nice_mobs.is_eating set value 1b

effect give @s minecraft:slowness 6 255 true
execute on passengers run function #nice_mobs:animation/rat/eat