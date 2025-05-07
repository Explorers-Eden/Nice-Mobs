data modify entity @s Invulnerable set value 0b
effect clear @s minecraft:slowness

data modify entity @s data.nice_mobs.action set value 0b
data modify entity @s data.nice_mobs.holds_item set value 0b
scoreboard players reset @s nice_mobs.entity.generic_timer