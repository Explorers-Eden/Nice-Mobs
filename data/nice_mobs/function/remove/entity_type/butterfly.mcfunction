execute as @e[tag=nice_mobs.butterfly.vehicle,tag=!nice_mobs.wisp.vehicle,tag=!nice_mobs.moth.vehicle] run function nice_mobs:misc/kill
tellraw @s [{"bold":false,"color":"#FF4A4A","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Removed loaded Butterflie Entities"}]
playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2