playsound minecraft:entity.allay.item_thrown neutral @a ~ ~ ~ .5 1.5
particle minecraft:happy_villager ~ ~.3 ~ .3 .3 .3 3 3 
data modify entity @s HasNectar set value 0b

execute as @s[tag=nice_mobs.butterfly.monarch] run return run effect give @e[type=player,distance=..3] minecraft:regeneration 120 0 false