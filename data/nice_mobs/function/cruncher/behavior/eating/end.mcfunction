execute on passengers run function animated_java:cruncher/animations/eat/stop

execute if data entity @s data.nice_mobs{ore_type_last_eaten:"stone"} run return run loot spawn ^ ^.3 ^.4 loot {"type":"minecraft:entity","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:cobblestone"}]}]}
execute if data entity @s data.nice_mobs{ore_type_last_eaten:"deepslate"} run return run loot spawn ^ ^.3 ^.4 loot {"type":"minecraft:entity","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:deepslate"}]}]}