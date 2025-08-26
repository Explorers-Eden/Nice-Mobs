effect give @s minecraft:slowness 6 255 true
execute unless data entity @s data.nice_mobs{animation:"dig"} on passengers run function #nice_mobs:animation/mushling/dig

execute unless data entity @s data.nice_mobs{animation:"dig"} run playsound minecraft:entity.sniffer.digging neutral @a ~ ~ ~ .5 2
particle block{block_state:"minecraft:dirt"} ~ ~ ~ .1 .2 .1 .0 10 normal

execute unless score @s nice_mobs.entity.generic_timer matches 977 run scoreboard players add @s nice_mobs.entity.generic_timer 1
execute unless score @s nice_mobs.entity.generic_timer matches 976 run data modify entity @s data.nice_mobs.animation set value "dig"

execute if score @s nice_mobs.entity.generic_timer matches 976.. run loot spawn ~ ~ ~ loot nice_mobs:gameplay/mushling_digging
execute if score @s nice_mobs.entity.generic_timer matches 976.. run data modify entity @s data.nice_mobs.animation set value "idle"
execute if score @s nice_mobs.entity.generic_timer matches 976.. run scoreboard players set @s nice_mobs.entity.generic_timer 0