effect give @s minecraft:slowness 6 255 true
execute unless data entity @s data.nice_mobs{animation:"dig"} on passengers run function #nice_mobs:animation/nautilus_crab/dig

execute unless data entity @s data.nice_mobs{animation:"dig"} run playsound minecraft:entity.sniffer.digging neutral @a ~ ~ ~ .5 2
execute if data entity @s data.nice_mobs{animation:"dig"} on passengers run particle block{block_state:"minecraft:sand"} ~ ~ ~ .1 .2 .1 .0 10 normal

execute if score @s nice_mobs.entity.generic_timer matches 960 run data modify entity @s data.nice_mobs.animation set value "dig"

execute if score @s nice_mobs.entity.generic_timer matches ..975 run scoreboard players add @s nice_mobs.entity.generic_timer 1
execute if score @s nice_mobs.entity.generic_timer matches 976.. run setblock ~ ~-1 ~ suspicious_sand{LootTable:"nice_mobs:gameplay/nautilus_crab_buried"} replace
execute if score @s nice_mobs.entity.generic_timer matches 976.. run scoreboard players set @s nice_mobs.entity.generic_timer 0