execute on passengers run function #nice_mobs:animation/tuff_golem/start_holding
data modify entity @s data.nice_mobs.animation set value "start_holding"

data modify entity @s Invulnerable set value 1b
effect give @s minecraft:slowness infinite 255 true

data modify entity @s data.nice_mobs.action set value 0b
data modify entity @s data.nice_mobs.holds_item set value 1b