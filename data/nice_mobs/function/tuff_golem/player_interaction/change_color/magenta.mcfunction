execute at @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] run particle minecraft:heart ~ ~1.2 ~ .1 .1 .1 0 3
execute at @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] run playsound minecraft:entity.villager.celebrate neutral @a ~ ~ ~ .5 .5

tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] add nice_mobs.tuff_golem.magenta

tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.blue
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.black
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.brown
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.cyan
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.gray
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.green
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.light_blue
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.light_gray
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.lime
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.moss
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.orange
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.pale_moss
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.pink
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.purple
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.red
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.white
tag @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.vehicle,distance=..3] remove nice_mobs.tuff_golem.yellow

execute as @n[type=minecraft:villager,tag=nice_mobs.tuff_golem.magenta,distance=..3] on passengers run function animated_java:tuff_golem/variants/magenta/apply

item modify entity @s[gamemode=!creative] weapon.mainhand eden:detract_item