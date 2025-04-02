function nice_mobs:cruncher/behavior/eating/save_scores

execute as @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!is_eating,distance=..1] at @s run function nice_mobs:cruncher/behavior/eating/start

item modify entity @s container.0 eden:detract_item