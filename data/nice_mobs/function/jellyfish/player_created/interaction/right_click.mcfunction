advancement revoke @s only nice_mobs:dried_jellyfish/right_click

execute unless items entity @s weapon.mainhand minecraft:phantom_membrane run return fail
execute as @n[type=minecraft:interaction,tag=nice_mobs.jellyfish.crafted.interaction,distance=..16] if data entity @s interaction at @s unless block ~ ~ ~ #nice_mobs:jellyfish_can_survive run return fail

execute store result score $jellyfish_value nice_mobs.technical run random value 50..100
execute as @e[type=minecraft:interaction,tag=nice_mobs.jellyfish.crafted.interaction,distance=..16] if data entity @s interaction run scoreboard players operation @s nice_mobs.item.time_since_placed += $jellyfish_value nice_mobs.technical


execute as @e[type=minecraft:interaction,tag=nice_mobs.jellyfish.crafted.interaction,distance=..16] if data entity @s interaction at @s run particle minecraft:wax_off ~ ~.2 ~ .4 .3 .4 .5 10
execute as @e[type=minecraft:interaction,tag=nice_mobs.jellyfish.crafted.interaction,distance=..16] if data entity @s interaction at @s run playsound minecraft:entity.glow_squid.ambient neutral @a ~ ~ ~ .6 1.5

execute as @e[type=minecraft:interaction,tag=nice_mobs.jellyfish.crafted.interaction,distance=..16] if data entity @s interaction run data remove entity @s interaction
item modify entity @s weapon.mainhand nice_mobs:detract_item