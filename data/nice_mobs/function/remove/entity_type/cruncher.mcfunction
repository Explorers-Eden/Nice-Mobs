execute as @e[tag=nice_mobs.cruncher.vehicle] run function nice_mobs:misc/kill
tellraw @s [{"bold":false,"color":"#FF4A4A","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Removed loaded Cruncher Entities"}]
playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2