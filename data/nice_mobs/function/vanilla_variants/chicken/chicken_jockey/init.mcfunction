schedule function nice_mobs:vanilla_variants/chicken/chicken_jockey/init 9t

execute if data storage eden:settings nice_mobs.behavior{chickenjockeyvariants:"disabled"} run return fail
execute as @e[type=chicken,tag=!is_jockey] if data entity @s {IsChickenJockey:1b} at @s unless biome ~ ~ ~ #minecraft:is_nether run return run function nice_mobs:vanilla_variants/chicken/chicken_jockey/zombie
execute as @e[type=chicken,tag=!is_jockey] if data entity @s {IsChickenJockey:1b} at @s if biome ~ ~ ~ #minecraft:is_nether run return run function nice_mobs:vanilla_variants/chicken/chicken_jockey/strider