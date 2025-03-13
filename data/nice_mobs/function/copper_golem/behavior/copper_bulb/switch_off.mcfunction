particle minecraft:wax_off ^ ^ ^.3 .3 .3 .3 1 10 normal

playsound minecraft:block.copper_bulb.turn_off block @a ~ ~ ~ .5

execute if block ~ ~-1 ~ minecraft:copper_bulb run setblock ~ ~-1 ~ minecraft:copper_bulb[lit=false]
execute if block ~ ~-1 ~ minecraft:exposed_copper_bulb run setblock ~ ~-1 ~ minecraft:exposed_copper_bulb[lit=false]
execute if block ~ ~-1 ~ minecraft:oxidized_copper_bulb run setblock ~ ~-1 ~ minecraft:oxidized_copper_bulb[lit=false]
execute if block ~ ~-1 ~ minecraft:waxed_copper_bulb run setblock ~ ~-1 ~ minecraft:waxed_copper_bulb[lit=false]
execute if block ~ ~-1 ~ minecraft:waxed_exposed_copper_bulb run setblock ~ ~-1 ~ minecraft:waxed_exposed_copper_bulb[lit=false]
execute if block ~ ~-1 ~ minecraft:waxed_oxidized_copper_bulb run setblock ~ ~-1 ~ minecraft:waxed_oxidized_copper_bulb[lit=false]
execute if block ~ ~-1 ~ minecraft:waxed_weathered_copper_bulb run setblock ~ ~-1 ~ minecraft:waxed_weathered_copper_bulb[lit=false]
execute if block ~ ~-1 ~ minecraft:weathered_copper_bulb run setblock ~ ~-1 ~ minecraft:weathered_copper_bulb[lit=false]