execute store result score $cruncher.inventory.coal nice_mobs.technical run data get entity @s data.nice_mobs.inventory.coal
execute store result score $cruncher.inventory.lapis nice_mobs.technical run data get entity @s data.nice_mobs.inventory.lapis
execute store result score $cruncher.inventory.iron nice_mobs.technical run data get entity @s data.nice_mobs.inventory.iron
execute store result score $cruncher.inventory.gold nice_mobs.technical run data get entity @s data.nice_mobs.inventory.gold
execute store result score $cruncher.inventory.copper nice_mobs.technical run data get entity @s data.nice_mobs.inventory.copper
execute store result score $cruncher.inventory.emerald nice_mobs.technical run data get entity @s data.nice_mobs.inventory.emerald
execute store result score $cruncher.inventory.diamond nice_mobs.technical run data get entity @s data.nice_mobs.inventory.diamond
execute store result score $cruncher.inventory.redstone nice_mobs.technical run data get entity @s data.nice_mobs.inventory.redstone

scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.coal nice_mobs.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.lapis nice_mobs.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.iron nice_mobs.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.gold nice_mobs.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.copper nice_mobs.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.emerald nice_mobs.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.diamond nice_mobs.technical
scoreboard players operation @s nice_mobs.cruncher.ores_holding += $cruncher.item.redstone nice_mobs.technical

execute store result entity @s data.nice_mobs.inventory.coal int 1 run scoreboard players operation $cruncher.inventory.coal nice_mobs.technical += $cruncher.item.coal nice_mobs.technical
execute store result entity @s data.nice_mobs.inventory.lapis int 1 run scoreboard players operation $cruncher.inventory.lapis nice_mobs.technical += $cruncher.item.lapis nice_mobs.technical
execute store result entity @s data.nice_mobs.inventory.iron int 1 run scoreboard players operation $cruncher.inventory.iron nice_mobs.technical += $cruncher.item.iron nice_mobs.technical
execute store result entity @s data.nice_mobs.inventory.gold int 1 run scoreboard players operation $cruncher.inventory.gold nice_mobs.technical += $cruncher.item.gold nice_mobs.technical
execute store result entity @s data.nice_mobs.inventory.copper int 1 run scoreboard players operation $cruncher.inventory.copper nice_mobs.technical += $cruncher.item.copper nice_mobs.technical
execute store result entity @s data.nice_mobs.inventory.emerald int 1 run scoreboard players operation $cruncher.inventory.emerald nice_mobs.technical += $cruncher.item.emerald nice_mobs.technical
execute store result entity @s data.nice_mobs.inventory.diamond int 1 run scoreboard players operation $cruncher.inventory.diamond nice_mobs.technical += $cruncher.item.diamond nice_mobs.technical
execute store result entity @s data.nice_mobs.inventory.redstone int 1 run scoreboard players operation $cruncher.inventory.redstone nice_mobs.technical += $cruncher.item.redstone nice_mobs.technical