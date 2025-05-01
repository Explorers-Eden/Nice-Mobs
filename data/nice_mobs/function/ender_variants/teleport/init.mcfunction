execute store result storage eden:temp ender.height int 1 run data get entity @s Pos[1]
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"ender.height"},"range":{"max":0}} run data modify storage eden:temp ender.height set value 32

function nice_mobs:ender_variants/teleport/exec with storage eden:temp ender

data remove storage eden:temp ender