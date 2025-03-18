execute at @n[type=minecraft:villager,tag=nice_mobs.dirt_golem.vehicle,distance=..3] run particle minecraft:heart ~ ~1.2 ~ .1 .1 .1 0 3
execute at @n[type=minecraft:villager,tag=nice_mobs.dirt_golem.vehicle,distance=..3] run playsound minecraft:entity.evoker.celebrate neutral @a ~ ~ ~ .5 1.5

data modify entity @n[type=minecraft:block_display,tag=aj.dirt_golem.node.plant,distance=..3] block_state.Name set from entity @s SelectedItem.id

item modify entity @s weapon.mainhand eden:detract_item

tag @s remove interacted_dirt_golem