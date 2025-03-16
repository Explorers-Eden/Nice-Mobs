advancement revoke @s only nice_mobs:interacted_with_tuff_golem

execute if items entity @s weapon.mainhand #eden:valid_for_tuff_golem_color_change at @s positioned ^ ^ ^3 run function nice_mobs:tuff_golem/player_interaction/change_color/check
execute unless items entity @s weapon.mainhand #eden:valid_for_tuff_golem_color_change at @s positioned ^ ^ ^3 run function nice_mobs:tuff_golem/player_interaction/item_holding/init

#/data modify entity @n[type=item_display,tag=aj.tuff_golem.node.tuff_golem_holding,distance=..3] item set from entity @s SelectedItem