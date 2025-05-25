schedule function nice_mobs:vanilla_variants/chicken/rooster/init 6s

execute if data storage eden:gamerule nice_mobs.behavior{roostercrowing:"Disabled"} run return fail
execute as @e[type=chicken] at @s unless data entity @s data.nice_mobs{has_crowd: 1b} if data entity @s {variant:"nice_mobs:rooster"} if predicate eden:time/valid_for_rooster_sound run function nice_mobs:vanilla_variants/chicken/rooster/get_data
execute as @e[type=chicken] if data entity @s data.nice_mobs{has_crowd: 1b} if data entity @s {variant:"nice_mobs:rooster"} unless predicate eden:time/valid_for_rooster_sound run data modify entity @s data.nice_mobs.has_crowd set value 0b