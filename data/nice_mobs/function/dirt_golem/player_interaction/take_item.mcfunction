particle minecraft:angry_villager ~ ~1.5 ~ .1 .1 .1 0 3

execute at @p[tag=interacted_dirt_golem] run summon item ~ ~ ~ {Tags:["dirt_golem_returned"],Item:{id:"minecraft:dirt",count:1}}
data modify entity @n[type=item,tag=dirt_golem_returned] Item.id set from entity @n[type=minecraft:block_display,tag=aj.dirt_golem.node.plant,distance=..3] block_state.Name
data modify entity @n[type=minecraft:block_display,tag=aj.dirt_golem.node.plant,distance=..3] block_state.Name set value "minecraft:air"

tag @s remove interacted_dirt_golem