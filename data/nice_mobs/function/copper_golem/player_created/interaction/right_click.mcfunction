advancement revoke @s only nice_mobs:copper_golem/right_click

execute unless items entity @s weapon.mainhand minecraft:copper_ingot run return fail

execute store result score $copper_golem_value eden.technical run random value 50..100
execute as @e[type=minecraft:interaction,tag=nice_mobs.copper_golem.crafted.interaction,distance=..16] if data entity @s interaction run scoreboard players operation @s nice_mobs.item.time_since_placed += $copper_golem_value eden.technical


execute as @e[type=minecraft:interaction,tag=nice_mobs.copper_golem.crafted.interaction,distance=..16] if data entity @s interaction at @s run playsound minecraft:block.copper.place neutral @a ~ ~ ~ 1 1
execute as @e[type=minecraft:interaction,tag=nice_mobs.copper_golem.crafted.interaction,distance=..16] if data entity @s interaction at @s run particle minecraft:wax_off ~ ~.2 ~ .4 .3 .4 .5 10

execute as @e[type=minecraft:interaction,tag=nice_mobs.copper_golem.crafted.interaction,distance=..16] if data entity @s interaction run data remove entity @s interaction
item modify entity @s weapon.mainhand eden:detract_item