$loot spawn ^ ^ ^ loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:coal","functions":[{"function":"minecraft:set_count","count":$(coal)}]}]}]}
$loot spawn ^ ^ ^ loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:redstone","functions":[{"function":"minecraft:set_count","count":$(redstone)}]}]}]}
$loot spawn ^ ^ ^ loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:lapis_lazuli","functions":[{"function":"minecraft:set_count","count":$(lapis)}]}]}]}
$loot spawn ^ ^ ^ loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:emerald","functions":[{"function":"minecraft:set_count","count":$(emerald)}]}]}]}
$loot spawn ^ ^ ^ loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:diamond","functions":[{"function":"minecraft:set_count","count":$(diamond)}]}]}]}
$loot spawn ^ ^ ^ loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:raw_iron","functions":[{"function":"minecraft:set_count","count":$(iron)}]}]}]}
$loot spawn ^ ^ ^ loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:raw_copper","functions":[{"function":"minecraft:set_count","count":$(copper)}]}]}]}
$loot spawn ^ ^ ^ loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:raw_gold","functions":[{"function":"minecraft:set_count","count":$(gold)}]}]}]}

data modify entity @s data.nice_mobs.inventory set value {coal:0,copper:0,iron:0,redstone:0,lapis:0,diamond:0,gold:0,emerald:0}
scoreboard players set @s nice_mobs.cruncher.ores_holding 0