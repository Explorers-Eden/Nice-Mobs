schedule function nice_mobs:chicken/rooster/init 6s

execute as @e[type=chicken,tag=!has_crowed] at @s if data entity @s {variant:"nice_mobs:rooster"} if predicate eden:time/valid_for_rooster_sound run function nice_mobs:chicken/rooster/get_data
execute as @e[type=chicken,tag=has_crowed] if data entity @s {variant:"nice_mobs:rooster"} unless predicate eden:time/valid_for_rooster_sound run tag @s remove has_crowed