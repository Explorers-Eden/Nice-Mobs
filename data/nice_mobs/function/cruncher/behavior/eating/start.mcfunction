effect give @s minecraft:slowness 2 255 true
playsound minecraft:entity.camel.eat neutral @a ~ ~ ~ .7 .5
particle block{block_state:"minecraft:dripstone_block"} ^ ^.3 ^.4 0 0 0 0 15 normal

function nice_mobs:cruncher/behavior/eating/ore_calculations

execute on passengers run function #nice_mobs:animation/cruncher/eat
data modify entity @s data.nice_mobs.animation set value "eat"
data modify entity @s data.nice_mobs.action set value 1b