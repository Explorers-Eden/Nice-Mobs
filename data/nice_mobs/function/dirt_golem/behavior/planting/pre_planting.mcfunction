playsound minecraft:entity.evoker.celebrate neutral @a ~ ~ ~ .5 1.5
execute unless data entity @n[type=minecraft:block_display,tag=aj.dirt_golem.node.plant,distance=..3] block_state{"Name":"minecraft:air"} run particle minecraft:happy_villager ~ ~ ~ .3 .3 .3 .5 10
particle block{block_state:"minecraft:dirt"} ~ ~ ~ .2 .2 .2 .0 15 normal

function nice_mobs:dirt_golem/behavior/planting/planting with entity @n[type=minecraft:block_display,tag=aj.dirt_golem.node.plant,distance=..3] block_state