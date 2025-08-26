execute at @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] run particle minecraft:heart ~ ~1.2 ~ .1 .1 .1 0 3
execute at @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ .5 .5

data modify entity @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] data.nice_mobs.variant set value "purple"
execute as @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] on passengers run function animated_java:tuff_golem/variants/purple/apply

item modify entity @s[gamemode=!creative] weapon.mainhand nice_mobs:detract_item