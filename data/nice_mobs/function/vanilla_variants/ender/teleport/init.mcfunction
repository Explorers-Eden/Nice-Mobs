execute store result storage eden:temp ender.height int 2 run data get entity @s Pos[1]
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"ender.height"},"range":{"max":0}} run data modify storage eden:temp ender.height set value 64

function nice_mobs:vanilla_variants/ender/teleport/exec with storage eden:temp ender

data remove storage eden:temp ender