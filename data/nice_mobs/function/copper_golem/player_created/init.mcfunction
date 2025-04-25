execute as @e[type=armor_stand,tag=nice_mobs.copper_golem.crafted] at @s run function nice_mobs:copper_golem/player_created/place_head

execute as @e[type=interaction,tag=nice_mobs.copper_golem.crafted.interaction,predicate=eden:percentages/33] run scoreboard players add @s nice_mobs.item.time_since_placed 1
execute as @e[type=interaction,tag=nice_mobs.copper_golem.crafted.interaction,tag=!nice_mobs.copper_golem.updated,scores={nice_mobs.item.time_since_placed=1200..}] at @s run function nice_mobs:copper_golem/player_created/update_head
execute as @e[type=interaction,tag=nice_mobs.copper_golem.crafted.interaction,scores={nice_mobs.item.time_since_placed=2400..}] at @s run function nice_mobs:copper_golem/player_created/summon_golem