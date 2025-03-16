tag @s add interacted_tuff_golem

execute as @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] at @s run function nice_mobs:tuff_golem/player_interaction/item_holding/item_check

tag @s remove interacted_tuff_golem