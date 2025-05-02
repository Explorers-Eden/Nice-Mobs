playsound minecraft:entity.allay.item_thrown neutral @a ~ ~ ~ .5 1.5
particle minecraft:happy_villager ~ ~.3 ~ .3 .3 .3 3 3 
data modify entity @s HasNectar set value 0b
advancement grant @a[gamemode=survival,distance=..3,scores={nice_mobs.player.butterfly_effect=..0}] only nice_mobs:adventure/butterfly_effect
scoreboard players set @a[gamemode=survival,distance=..3,scores={nice_mobs.player.butterfly_effect=..0}] nice_mobs.player.butterfly_effect 240

execute as @s[tag=nice_mobs.butterfly.generic] run return run effect give @a[gamemode=survival,distance=..3] minecraft:regeneration 60 0 false
execute as @s[tag=nice_mobs.butterfly.monarch] run return run effect give @a[gamemode=survival,distance=..3] minecraft:haste 60 0 false
execute as @s[tag=nice_mobs.butterfly.tiger] run return run effect give @a[gamemode=survival,distance=..3] minecraft:jump_boost 60 0 false
execute as @s[tag=nice_mobs.butterfly.mourning_cloak] run return run effect give @a[gamemode=survival,distance=..3] minecraft:speed 60 0 false

execute as @s[tag=nice_mobs.moth.luna] run return run effect give @a[gamemode=survival,distance=..3] minecraft:luck 60 0 false
execute as @s[tag=nice_mobs.moth.cecropia] run return run effect give @a[gamemode=survival,distance=..3] minecraft:bad_omen 60 0 false

execute as @s[tag=nice_mobs.wisp.arctic] run return run effect give @a[gamemode=survival,distance=..3] minecraft:fire_resistance 60 0 false
execute as @s[tag=nice_mobs.wisp.umbral] run return run effect give @a[gamemode=survival,distance=..3] minecraft:night_vision 60 0 false
execute as @s[tag=nice_mobs.wisp.blazing] run return run effect give @a[gamemode=survival,distance=..3] minecraft:strength 60 0 false
execute as @s[tag=nice_mobs.wisp.twisted] run return run effect give @a[gamemode=survival,distance=..3] minecraft:resistance 60 0 false
execute as @s[tag=nice_mobs.wisp.flourishing] run return run effect give @a[gamemode=survival,distance=..3] minecraft:saturation 60 0 false
execute as @s[tag=nice_mobs.wisp.tidal] run return run effect give @a[gamemode=survival,distance=..3] minecraft:water_breathing 60 0 false
execute as @s[tag=nice_mobs.wisp.ethereal] run return run effect give @a[gamemode=survival,distance=..3] minecraft:slow_falling 60 0 false
execute as @s[tag=nice_mobs.wisp.void] run return run effect give @a[gamemode=survival,distance=..3] minecraft:levitation 60 0 false
execute as @s[tag=nice_mobs.wisp.watching] run return run effect give @e[type=!item,distance=..16] minecraft:glowing 60 0 false