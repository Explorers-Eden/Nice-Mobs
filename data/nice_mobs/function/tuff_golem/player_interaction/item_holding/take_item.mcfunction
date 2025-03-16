particle minecraft:angry_villager ~ ~1.2 ~ .1 .1 .1 0 3

execute at @p[tag=interacted_tuff_golem] run summon item ~ ~ ~ {Tags:["tuff_golem_returned"],Item:{id:"minecraft:dirt",count:1}}
data modify entity @n[type=item,tag=tuff_golem_returned] Item set from entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item
data remove entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item

scoreboard players set @s nice_mobs.entity.action 2