tag @s remove is_returning

data modify entity @s Invulnerable set value 0b
data modify entity @s NoAI set value 0b

#execute on vehicle run kill @s

scoreboard players reset @s nice_mobs.entity.action
scoreboard players reset @s nice_mobs.entity.timer