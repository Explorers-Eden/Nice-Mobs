execute at @p[tag=interacted_tuff_golem] run summon item ~ ~ ~ {Tags:["tuff_golem_returned"],Item:{id:"minecraft:dirt",count:1}}
data modify entity @n[type=item,tag=tuff_golem_returned] Item set from entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item
data remove entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item

data modify entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item set from entity @p[tag=interacted_tuff_golem] SelectedItem
data modify entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item.count set value 1b

item modify entity @p[tag=interacted_tuff_golem] weapon.mainhand eden:detract_item