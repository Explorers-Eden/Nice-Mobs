effect clear @s[tag=nice_mobs.snail.vehicle] minecraft:oozing
effect clear @s minecraft:glowing
data modify entity @s Age set value 2400
execute at @s if data entity @s {"Saddle":1b} run summon item ~ ~ ~ {Item:{id:"minecraft:saddle",count:1}}
data modify entity @s Saddle set value 0b
