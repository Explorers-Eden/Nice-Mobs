advancement revoke @s only nice_mobs:interacted_with_dirt_golem

execute if items entity @s weapon.mainhand #eden:valid_for_dirt_golem at @s positioned ^ ^ ^3 run function nice_mobs:dirt_golem/player_interaction/change_item