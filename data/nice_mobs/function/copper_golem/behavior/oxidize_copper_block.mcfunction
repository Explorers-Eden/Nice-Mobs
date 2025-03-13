particle minecraft:wax_off ^ ^ ^.3 .3 .3 .3 1 10 normal

execute if block ~ ~-1 ~ minecraft:weathered_copper run setblock ~ ~-1 ~ minecraft:oxidized_copper
execute if block ~ ~-1 ~ minecraft:exposed_copper run setblock ~ ~-1 ~ minecraft:weathered_copper
execute if block ~ ~-1 ~ minecraft:copper_block run setblock ~ ~-1 ~ minecraft:exposed_copper

scoreboard players reset @s nice_mobs.entity.timer