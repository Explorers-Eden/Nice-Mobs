tag @s remove is_walking
tag @s remove is_idle

effect give @s minecraft:slowness 6 255 true
execute on passengers if entity @s[type=item_display,tag=!is_digging] run function animated_java:nautilus_crab/animations/walk/stop
execute on passengers if entity @s[type=item_display,tag=!is_digging] run function animated_java:nautilus_crab/animations/idle/stop
execute on passengers if entity @s[type=item_display,tag=!is_digging] run function animated_java:nautilus_crab/animations/dig/play

execute on passengers if entity @s[type=item_display,tag=!is_digging] run playsound minecraft:entity.sniffer.digging neutral @a ~ ~ ~ .5 2
execute on passengers run particle block{block_state:"minecraft:sand"} ~ ~ ~ .1 .2 .1 .0 10 normal

execute unless score @s nice_mobs.entity.action matches 17 run scoreboard players add @s nice_mobs.entity.action 1
execute unless score @s nice_mobs.entity.action matches 16 on passengers run tag @s add is_digging

execute if score @s nice_mobs.entity.action matches 16.. run setblock ~ ~-1 ~ suspicious_sand{LootTable:"eden:gameplay/nautilus_crab_buried"} replace
execute if score @s nice_mobs.entity.action matches 16.. run scoreboard players set @s nice_mobs.entity.timer 0
execute if score @s nice_mobs.entity.action matches 16.. on passengers run tag @s remove is_digging
execute if score @s nice_mobs.entity.action matches 16.. run scoreboard players set @s nice_mobs.entity.action 0