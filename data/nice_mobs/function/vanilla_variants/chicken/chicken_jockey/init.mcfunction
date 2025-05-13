schedule function nice_mobs:vanilla_variants/chicken/chicken_jockey/init 9t

execute if data storage eden:gamerule nice_mobs.behavior{chickenjockeyvariants:0b} run return fail
execute as @e[type=chicken,tag=!is_jockey] if data entity @s {IsChickenJockey:1b} at @s unless biome ~ ~ ~ #minecraft:is_nether run return run function nice_mobs:vanilla_variants/chicken/chicken_jockey/zombie
execute as @e[type=chicken,tag=!is_jockey] if data entity @s {IsChickenJockey:1b} at @s if biome ~ ~ ~ #minecraft:is_nether run return run function nice_mobs:vanilla_variants/chicken/chicken_jockey/strider