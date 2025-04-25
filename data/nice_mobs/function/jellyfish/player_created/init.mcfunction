execute as @e[type=armor_stand,tag=nice_mobs.jellyfish.crafted] at @s run function nice_mobs:jellyfish/player_created/place_head

execute as @e[type=interaction,tag=nice_mobs.jellyfish.crafted.interaction,predicate=eden:percentages/33] at @s if block ~ ~ ~ #eden:jellyfish_can_survive run scoreboard players add @s nice_mobs.item.time_since_placed 1
execute as @e[type=interaction,tag=nice_mobs.jellyfish.crafted.interaction,scores={nice_mobs.item.time_since_placed=2400..}] at @s if block ~ ~ ~ #eden:jellyfish_can_survive run function nice_mobs:jellyfish/player_created/summon_jellyfish