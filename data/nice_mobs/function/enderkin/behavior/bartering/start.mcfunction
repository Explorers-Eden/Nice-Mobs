data modify entity @s data.nice_mobs.animation set value "barter"
data modify entity @s data.nice_mobs.action set value 1b
data modify entity @s data.nice_mobs.is_bartering set value 0b

effect give @s minecraft:slowness 4 255 true
execute on passengers run function #nice_mobs:animation/enderkin/barter