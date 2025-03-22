execute as @n[type=pig,tag=nice_mobs.rat.vehicle,tag=!is_eating,distance=..1] at @s run function nice_mobs:rat/behavior/eating/start
item modify entity @s container.0 eden:detract_item