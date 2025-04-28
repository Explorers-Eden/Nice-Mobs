schedule function nice_mobs:skeleton_trap/init 11t

execute as @e[type=minecraft:skeleton_horse,tag=!nice_mobs.is_trap] if data entity @s {SkeletonTrap:1b} at @s run function nice_mobs:skeleton_trap/spawn/init
execute as @e[type=#eden:is_custom_trap] if data entity @s data{SkeletonTrap:1b} at @s if entity @e[type=player,distance=..10] run function nice_mobs:skeleton_trap/exec_trap with entity @s data

execute as @e[type=#eden:is_custom_trap] if data entity @s {variant:"nice_mobs:skeleton"} run data modify entity @s Age set value 2400