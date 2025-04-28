effect clear @s[tag=nice_mobs.snail.vehicle] minecraft:oozing
execute at @s if data entity @s equipment.saddle run summon item ~ ~ ~ {Item:{id:"minecraft:saddle",count:1}}
item replace entity @s saddle with air