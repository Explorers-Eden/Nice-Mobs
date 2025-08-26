execute as @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!is_eating,distance=..1,scores={nice_mobs.cruncher.ores_holding=..1727}] if data entity @s data.nice_mobs{animation:"eating"} run return fail
execute as @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!is_eating,distance=..1,scores={nice_mobs.cruncher.ores_holding=..1727}] if data entity @s data.nice_mobs{action:1b} run return fail

execute if items entity @s container.* #nice_mobs:stone_ores run data modify entity @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!is_eating,distance=..1,scores={nice_mobs.cruncher.ores_holding=..1727}] data.nice_mobs.ore_type_last_eaten set value "stone"
execute if items entity @s container.* #nice_mobs:deepslate_ores run data modify entity @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!is_eating,distance=..1,scores={nice_mobs.cruncher.ores_holding=..1727}] data.nice_mobs.ore_type_last_eaten set value "deepslate"

function nice_mobs:cruncher/behavior/eating/get_ore_count

execute as @n[type=pig,tag=nice_mobs.cruncher.vehicle,distance=..1,scores={nice_mobs.cruncher.ores_holding=..1727}] at @s run function nice_mobs:cruncher/behavior/eating/start

item modify entity @s container.0 nice_mobs:detract_item