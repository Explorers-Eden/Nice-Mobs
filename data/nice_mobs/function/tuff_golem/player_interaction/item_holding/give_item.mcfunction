particle minecraft:heart ~ ~1.2 ~ .1 .1 .1 0 3

data modify entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item set from entity @p[tag=interacted_tuff_golem] SelectedItem
data modify entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item.count set value 1b

item modify entity @p[tag=interacted_tuff_golem] weapon.mainhand nice_mobs:detract_item

data modify entity @s data.nice_mobs.action set value 1b
