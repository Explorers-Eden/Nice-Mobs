scoreboard players set $cruncher.item.coal nice_mobs.technical 0
scoreboard players set $cruncher.item.copper nice_mobs.technical 0
scoreboard players set $cruncher.item.iron nice_mobs.technical 0
scoreboard players set $cruncher.item.redstone nice_mobs.technical 0
scoreboard players set $cruncher.item.lapis nice_mobs.technical 0
scoreboard players set $cruncher.item.diamond nice_mobs.technical 0
scoreboard players set $cruncher.item.gold nice_mobs.technical 0
scoreboard players set $cruncher.item.emerald nice_mobs.technical 0

execute if items entity @s container.* #minecraft:coal_ores store result score $cruncher.item.coal nice_mobs.technical run random value 2..5
execute if items entity @s container.* #minecraft:copper_ores store result score $cruncher.item.copper nice_mobs.technical run random value 2..4
execute if items entity @s container.* #minecraft:iron_ores store result score $cruncher.item.iron nice_mobs.technical run random value 1..5
execute if items entity @s container.* #minecraft:redstone_ores store result score $cruncher.item.redstone nice_mobs.technical run random value 2..6
execute if items entity @s container.* #minecraft:lapis_ores store result score $cruncher.item.lapis nice_mobs.technical run random value 2..4
execute if items entity @s container.* #minecraft:diamond_ores store result score $cruncher.item.diamond nice_mobs.technical run random value 1..3
execute if items entity @s container.* #minecraft:gold_ores store result score $cruncher.item.gold nice_mobs.technical run random value 1..4
execute if items entity @s container.* #minecraft:emerald_ores store result score $cruncher.item.emerald nice_mobs.technical run random value 2..4