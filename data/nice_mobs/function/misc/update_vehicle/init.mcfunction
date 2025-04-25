schedule function nice_mobs:misc/update_vehicle/init 11s

execute as @e[type=pig,tag=nice_mobs.base,tag=!nice_mobs.penguin.vehicle,tag=!nice_mobs.piggy_bank.vehicle] unless data entity @s {variant:"nice_mobs:invis_base"} run function nice_mobs:misc/update_vehicle/exec_pig
execute as @e[type=pig,tag=nice_mobs.base,tag=nice_mobs.penguin.vehicle] at @s run function nice_mobs:misc/update_vehicle/exec_penguin