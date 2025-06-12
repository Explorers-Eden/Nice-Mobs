execute as @n[tag=nice_mobs.base] run function nice_mobs:misc/kill
tellraw @s [{"bold":false,"color":"#FF4A4A","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Removed nearest loaded Nice Mobs Entity"}]
playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2