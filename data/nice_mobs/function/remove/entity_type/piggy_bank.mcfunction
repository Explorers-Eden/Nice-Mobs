execute as @e[tag=nice_mobs.piggy_bank.vehicle] run function nice_mobs:misc/kill
tellraw @s [{"bold":false,"color":"#FF4A4A","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Removed loaded Piggy Bank Entities"}]
playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2