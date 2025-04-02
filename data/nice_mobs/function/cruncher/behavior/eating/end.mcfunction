tag @s remove is_walking
tag @s remove is_falling
tag @s remove is_idle

loot spawn ^ ^.3 ^.4 loot eden:gameplay/cruncher_eating_stone

scoreboard players set @s nice_mobs.cruncher.stone_block_type 0

execute on passengers run function animated_java:cruncher/animations/eat/stop
