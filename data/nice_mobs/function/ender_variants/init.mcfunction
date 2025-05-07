schedule function nice_mobs:ender_variants/init 9t

execute as @e[type=#eden:is_data_driven_mob] at @s if data entity @s {variant:"nice_mobs:ender"} if data storage eden:gamerule nice_mobs.behavior{enderteleport:1b} run function nice_mobs:ender_variants/exec