execute as @n[type=pig,tag=nice_mobs.enderkin.vehicle,distance=..1] at @s if data entity @s data.nice_mobs{animation:"barter"} run return fail
execute as @n[type=pig,tag=nice_mobs.enderkin.vehicle,distance=..1] at @s if data entity @s data.nice_mobs{action:1b} run return fail
execute as @n[type=pig,tag=nice_mobs.enderkin.vehicle,distance=..1] at @s run function nice_mobs:enderkin/behavior/bartering/start
item modify entity @s container.0 eden:detract_item