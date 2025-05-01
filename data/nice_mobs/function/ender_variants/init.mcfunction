schedule function nice_mobs:ender_variants/init 5t

execute as @e[type=#eden:is_data_driven_mob] at @s if data entity @s {variant:"nice_mobs:ender"} run function nice_mobs:ender_variants/exec