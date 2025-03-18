playsound minecraft:entity.villager.death neutral @a ~ ~ ~ .5 .5

summon item ~ ~ ~ {Tags:["tuff_golem_returned"],Item:{id:"minecraft:dirt",count:1}}
data modify entity @n[type=item,tag=tuff_golem_returned] Item set from entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item

function animated_java:tuff_golem/remove/this