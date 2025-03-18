tag @s remove is_returning

data modify entity @s Invulnerable set value 0b
effect clear @s minecraft:slowness
#data modify entity @s NoAI set value 0b

scoreboard players reset @s nice_mobs.entity.action
scoreboard players reset @s nice_mobs.entity.timer