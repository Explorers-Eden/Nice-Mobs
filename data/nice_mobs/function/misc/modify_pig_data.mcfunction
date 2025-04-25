effect clear @s[tag=nice_mobs.snail.vehicle] minecraft:oozing
data modify entity @s Age set value 2400
execute at @s if data entity @s equipment.saddle run summon item ~ ~ ~ {Item:{id:"minecraft:saddle",count:1}}
item replace entity @s saddle with air