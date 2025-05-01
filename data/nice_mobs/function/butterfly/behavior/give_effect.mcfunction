playsound minecraft:entity.allay.item_thrown neutral @a ~ ~ ~ .5 1.5
particle minecraft:happy_villager ~ ~.3 ~ .3 .3 .3 3 3 
data modify entity @s HasNectar set value 0b
scoreboard players set @a[gamemode=survival,distance=..3,scores={nice_mobs.player.butterfly_effect=..0}] nice_mobs.player.butterfly_effect 240

execute as @s[tag=nice_mobs.butterfly.monarch] run return run effect give @a[gamemode=survival,distance=..3] minecraft:haste 60 0 false