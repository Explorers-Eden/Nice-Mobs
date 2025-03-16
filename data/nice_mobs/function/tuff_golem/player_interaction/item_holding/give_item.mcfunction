data modify entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item set from entity @p[tag=interacted_tuff_golem] SelectedItem
data modify entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item.count set value 1b

item modify entity @p[tag=interacted_tuff_golem] weapon.mainhand eden:detract_item

scoreboard players set @s nice_mobs.entity.action 1