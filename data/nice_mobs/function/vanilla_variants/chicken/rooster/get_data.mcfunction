execute unless predicate eden:percentages/33 run return fail

data modify storage eden:temp nice_mobs.age set from entity @s

execute unless data entity @s data.nice_mobs.crow_pitch run function nice_mobs:vanilla_variants/chicken/rooster/set_pitch
execute if predicate eden:entity/is_adult run function nice_mobs:vanilla_variants/chicken/rooster/exec with entity @s data.nice_mobs

data remove storage eden:temp nice_mobs.age