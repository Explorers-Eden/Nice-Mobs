execute as @n[type=pig,tag=nice_mobs.rat.vehicle,distance=..1] at @s if data entity @s data.nice_mobs{animation:"eat"} run return fail
execute as @n[type=pig,tag=nice_mobs.rat.vehicle,distance=..1] at @s if data entity @s data.nice_mobs{action:1b} run return fail

execute as @n[type=pig,tag=nice_mobs.rat.vehicle,tag=!is_eating,distance=..1] at @s run function nice_mobs:rat/behavior/eating/start
item modify entity @s container.0 nice_mobs:detract_item