execute store result storage eden:temp nice_mobs.cruncher.coal int 1 run scoreboard players get @s nice_mobs.cruncher.coal
execute store result storage eden:temp nice_mobs.cruncher.copper int 1 run scoreboard players get @s nice_mobs.cruncher.copper
execute store result storage eden:temp nice_mobs.cruncher.iron int 1 run scoreboard players get @s nice_mobs.cruncher.iron
execute store result storage eden:temp nice_mobs.cruncher.gold int 1 run scoreboard players get @s nice_mobs.cruncher.gold
execute store result storage eden:temp nice_mobs.cruncher.lapis int 1 run scoreboard players get @s nice_mobs.cruncher.lapis
execute store result storage eden:temp nice_mobs.cruncher.redstone int 1 run scoreboard players get @s nice_mobs.cruncher.redstone
execute store result storage eden:temp nice_mobs.cruncher.emerald int 1 run scoreboard players get @s nice_mobs.cruncher.emerald
execute store result storage eden:temp nice_mobs.cruncher.diamond int 1 run scoreboard players get @s nice_mobs.cruncher.diamond

function nice_mobs:cruncher/behavior/hurt/summon_items/exec with storage eden:temp nice_mobs.cruncher

scoreboard players set @s nice_mobs.cruncher.coal 0
scoreboard players set @s nice_mobs.cruncher.copper 0
scoreboard players set @s nice_mobs.cruncher.iron 0
scoreboard players set @s nice_mobs.cruncher.gold 0
scoreboard players set @s nice_mobs.cruncher.lapis 0
scoreboard players set @s nice_mobs.cruncher.redstone 0
scoreboard players set @s nice_mobs.cruncher.emerald 0
scoreboard players set @s nice_mobs.cruncher.diamond 0

scoreboard players set @s nice_mobs.cruncher.total_ore_count 0