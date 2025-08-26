schedule function nice_mobs:misc/environmental_damage 2s

execute as @e[type=wither_skeleton,tag=nice_mobs.jellyfish.vehicle,tag=!is_hurt] at @s unless block ~ ~ ~ #nice_mobs:jellyfish_can_survive run damage @s 1.5 minecraft:dry_out