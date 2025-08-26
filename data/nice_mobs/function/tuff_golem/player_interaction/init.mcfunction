advancement revoke @s only nice_mobs:interacted_with_tuff_golem

execute if items entity @s weapon.mainhand #nice_mobs:valid_for_tuff_golem_color_change at @s positioned ^ ^ ^3 run return run function nice_mobs:tuff_golem/player_interaction/change_color/check
execute unless items entity @s weapon.mainhand #nice_mobs:valid_for_tuff_golem_color_change at @s positioned ^ ^ ^3 run return run function nice_mobs:tuff_golem/player_interaction/item_holding/init
