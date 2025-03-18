playsound minecraft:entity.evoker.death neutral @a ~ ~ ~ .5 1.5

summon item ~ ~ ~ {Tags:["dirt_golem_returned"],Item:{id:"minecraft:dirt",count:1}}
data modify entity @n[type=item,tag=dirt_golem_returned] Item.id set from entity @n[type=minecraft:block_display,tag=aj.dirt_golem.node.plant,distance=..3] block_state.Name

function animated_java:dirt_golem/remove/this