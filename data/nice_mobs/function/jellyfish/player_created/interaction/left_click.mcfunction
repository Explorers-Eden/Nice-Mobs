advancement revoke @s only nice_mobs:dried_jellyfish/left_click

execute as @e[type=minecraft:interaction,tag=nice_mobs.jellyfish.crafted.interaction,distance=..16] if data entity @s attack at @s run playsound minecraft:block.copper.break neutral @a ~ ~ ~ 1 1
execute as @e[type=minecraft:interaction,tag=nice_mobs.jellyfish.crafted.interaction,distance=..16] if data entity @s attack at @s run loot spawn ~ ~ ~ loot nice_mobs:item/dried_jellyfish
execute as @e[type=minecraft:interaction,tag=nice_mobs.jellyfish.crafted.interaction,distance=..16] if data entity @s attack at @s run execute on vehicle run kill @s
execute as @e[type=minecraft:interaction,tag=nice_mobs.jellyfish.crafted.interaction,distance=..16] if data entity @s attack at @s run kill @s