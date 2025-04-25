$execute if block ~ ~-1 ~ #eden:jellyfish_can_survive if predicate eden:percentages/50 run data modify entity @s Motion[1] set value $(motion_1)
$execute unless block ~ ~-1 ~ #eden:jellyfish_can_survive run data modify entity @s Motion[1] set value $(motion_1)

$execute if predicate eden:percentages/50 on passengers run data modify entity @s Rotation[1] set value $(rotation_1)f

execute unless predicate eden:percentages/40 run return fail
$data modify entity @s Motion set value [$(motion_0),0,$(motion_2)]
$rotate @s ~$(spin) ~