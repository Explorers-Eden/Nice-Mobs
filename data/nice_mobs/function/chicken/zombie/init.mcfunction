schedule function nice_mobs:chicken/zombie/init 9t

execute as @e[type=chicken,tag=!is_zombie] if data entity @s {IsChickenJockey:1b} run function nice_mobs:chicken/zombie/exec