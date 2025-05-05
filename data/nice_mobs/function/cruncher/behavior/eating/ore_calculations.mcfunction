execute store result score $cruncher.inventory.coal eden.technical run data get entity @s data.nice_mobs.inventory.coal
execute store result score $cruncher.inventory.lapis eden.technical run data get entity @s data.nice_mobs.inventory.lapis
execute store result score $cruncher.inventory.iron eden.technical run data get entity @s data.nice_mobs.inventory.iron
execute store result score $cruncher.inventory.gold eden.technical run data get entity @s data.nice_mobs.inventory.gold
execute store result score $cruncher.inventory.copper eden.technical run data get entity @s data.nice_mobs.inventory.copper
execute store result score $cruncher.inventory.emerald eden.technical run data get entity @s data.nice_mobs.inventory.emerald
execute store result score $cruncher.inventory.diamond eden.technical run data get entity @s data.nice_mobs.inventory.diamond
execute store result score $cruncher.inventory.redstone eden.technical run data get entity @s data.nice_mobs.inventory.redstone

scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.coal eden.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.lapis eden.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.iron eden.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.gold eden.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.copper eden.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.emerald eden.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.diamond eden.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.redstone eden.technical

execute store result entity @s data.nice_mobs.inventory.coal int 1 run scoreboard players operation $cruncher.inventory.coal eden.technical += $cruncher.item.coal eden.technical
execute store result entity @s data.nice_mobs.inventory.lapis int 1 run scoreboard players operation $cruncher.inventory.lapis eden.technical += $cruncher.item.lapis eden.technical
execute store result entity @s data.nice_mobs.inventory.iron int 1 run scoreboard players operation $cruncher.inventory.iron eden.technical += $cruncher.item.iron eden.technical
execute store result entity @s data.nice_mobs.inventory.gold int 1 run scoreboard players operation $cruncher.inventory.gold eden.technical += $cruncher.item.gold eden.technical
execute store result entity @s data.nice_mobs.inventory.copper int 1 run scoreboard players operation $cruncher.inventory.copper eden.technical += $cruncher.item.copper eden.technical
execute store result entity @s data.nice_mobs.inventory.emerald int 1 run scoreboard players operation $cruncher.inventory.emerald eden.technical += $cruncher.item.emerald eden.technical
execute store result entity @s data.nice_mobs.inventory.diamond int 1 run scoreboard players operation $cruncher.inventory.diamond eden.technical += $cruncher.item.diamond eden.technical
execute store result entity @s data.nice_mobs.inventory.redstone int 1 run scoreboard players operation $cruncher.inventory.redstone eden.technical += $cruncher.item.redstone eden.technical