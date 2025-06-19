schedule function nice_mobs:vanilla_variants/chicken/pigeon/init 5s

execute as @e[type=chicken,tag=!nice_mobs.pigeon] if data entity @s {variant:"nice_mobs:pigeon"} unless data entity @s data.nice_mobs.coo_pitch run function nice_mobs:vanilla_variants/chicken/pigeon/tag/init
execute as @e[type=chicken,tag=nice_mobs.pigeon] if data entity @s {variant:"nice_mobs:pigeon"} if data entity @s data.nice_mobs.coo_pitch run function nice_mobs:vanilla_variants/chicken/pigeon/play/init with entity @s data.nice_mobs