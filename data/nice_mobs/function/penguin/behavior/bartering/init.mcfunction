execute as @n[type=pig,tag=nice_mobs.penguin.vehicle,tag=!is_bartering,distance=..1] at @s run function nice_mobs:penguin/behavior/bartering/start
item modify entity @s container.0 eden:detract_item