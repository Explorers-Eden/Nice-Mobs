playsound minecraft:entity.allay.item_thrown neutral @a ~ ~ ~ .5 1.5
particle minecraft:happy_villager ~ ~.3 ~ .3 .3 .3 3 3 
data modify entity @s HasNectar set value 0b
advancement grant @a[gamemode=survival,distance=..3,scores={nice_mobs.player.butterfly_effect=..0}] only nice_mobs:adventure/butterfly_effect
scoreboard players set @a[gamemode=survival,distance=..3,scores={nice_mobs.player.butterfly_effect=..0}] nice_mobs.player.butterfly_effect 240

$execute if data storage eden:settings nice_mobs.behavior{butterflyeffect:"enabled"} unless data entity @s data.nice_mobs{effect:"minecraft:glowing"} run return run effect give @a[gamemode=survival,distance=..3] $(effect) 60 0 false
execute if data storage eden:settings nice_mobs.behavior{butterflyeffect:"enabled"} if data entity @s data.nice_mobs{effect:"minecraft:glowing"} run return run effect give @e[type=!item,distance=..16] minecraft:glowing 60 0 false