advancement revoke @s only nice_mobs:interacted_with_dirt_golem
tag @s add interacted_dirt_golem

execute if items entity @s weapon.mainhand #nice_mobs:valid_for_dirt_golem at @s positioned ^ ^ ^3 run return run function nice_mobs:dirt_golem/player_interaction/check_item
execute unless items entity @s weapon.mainhand * at @s positioned ^ ^ ^3 run return run function nice_mobs:dirt_golem/player_interaction/take_item