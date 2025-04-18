schedule function nice_mobs:benny/init 1s

execute as @e[type=minecraft:chicken,name=Benny,tag=!is_benny] run return run function nice_mobs:chicken/benny/convert_to
execute as @e[type=minecraft:chicken,name=!Benny,tag=is_benny] run return run function nice_mobs:chicken/benny/convert_from