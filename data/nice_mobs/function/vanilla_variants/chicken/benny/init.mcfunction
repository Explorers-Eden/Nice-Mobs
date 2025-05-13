schedule function nice_mobs:vanilla_variants/chicken/benny/init 1s

execute as @e[type=minecraft:chicken,name=Benny,tag=!is_benny] run return run function nice_mobs:vanilla_variants/chicken/benny/convert_to
execute as @e[type=minecraft:chicken,name=!Benny,tag=is_benny] run return run function nice_mobs:vanilla_variants/chicken/benny/convert_from