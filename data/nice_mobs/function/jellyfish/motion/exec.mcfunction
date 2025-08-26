$execute if block ~ ~-1 ~ #nice_mobs:jellyfish_can_survive if predicate nice_mobs:percentages/50 run data modify entity @s Motion[1] set value $(motion_1)
$execute unless block ~ ~-1 ~ #nice_mobs:jellyfish_can_survive run data modify entity @s Motion[1] set value $(motion_1)

$execute if predicate nice_mobs:percentages/50 on passengers run data modify entity @s Rotation[1] set value $(rotation_1)f

execute unless predicate nice_mobs:percentages/40 run return fail
$data modify entity @s Motion set value [$(motion_0),0,$(motion_2)]
$rotate @s ~$(spin) ~