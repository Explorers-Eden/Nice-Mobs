effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:resistance 1 255 true

execute as @e[type=#minecraft:undead,distance=..1.3] run damage @s 1 minecraft:thorns by @n[type=pig,tag=nice_mobs.hedgehog.vehicle]