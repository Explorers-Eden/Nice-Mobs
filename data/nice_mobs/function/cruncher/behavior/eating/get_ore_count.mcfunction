scoreboard players set $cruncher.item.coal eden.technical 0
scoreboard players set $cruncher.item.copper eden.technical 0
scoreboard players set $cruncher.item.iron eden.technical 0
scoreboard players set $cruncher.item.redstone eden.technical 0
scoreboard players set $cruncher.item.lapis eden.technical 0
scoreboard players set $cruncher.item.diamond eden.technical 0
scoreboard players set $cruncher.item.gold eden.technical 0
scoreboard players set $cruncher.item.emerald eden.technical 0

execute if items entity @s container.* #minecraft:coal_ores store result score $cruncher.item.coal eden.technical run random value 2..5
execute if items entity @s container.* #minecraft:copper_ores store result score $cruncher.item.copper eden.technical run random value 2..4
execute if items entity @s container.* #minecraft:iron_ores store result score $cruncher.item.iron eden.technical run random value 1..5
execute if items entity @s container.* #minecraft:redstone_ores store result score $cruncher.item.redstone eden.technical run random value 2..6
execute if items entity @s container.* #minecraft:lapis_ores store result score $cruncher.item.lapis eden.technical run random value 2..4
execute if items entity @s container.* #minecraft:diamond_ores store result score $cruncher.item.diamond eden.technical run random value 1..3
execute if items entity @s container.* #minecraft:gold_ores store result score $cruncher.item.gold eden.technical run random value 1..4
execute if items entity @s container.* #minecraft:emerald_ores store result score $cruncher.item.emerald eden.technical run random value 2..4