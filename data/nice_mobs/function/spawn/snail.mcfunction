summon pig ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:'{"bold":false,"italic":false,"text":"Snail"}',\
DeathLootTable:"eden:entity/snail",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:8f,\
Saddle:0b,\
Age:2400,\
Tags:["nice_mobs.base","nice_mobs.snail.vehicle","eden.scaled","eden.baby_mount.set"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:8},{id:"minecraft:movement_speed",base:.07},{id:"minecraft:scale",base:0.35}]\
}

execute store result score $snail_type eden.technical run random value 1..18
execute if score $snail_type eden.technical matches 1..10 run function animated_java:snail/summon {args: {}}
execute if score $snail_type eden.technical matches 11 run function animated_java:snail/summon {args: {variant: "blue"}}
execute if score $snail_type eden.technical matches 12 run function animated_java:snail/summon {args: {variant: "cyan"}}
execute if score $snail_type eden.technical matches 13 run function animated_java:snail/summon {args: {variant: "gray"}}
execute if score $snail_type eden.technical matches 14 run function animated_java:snail/summon {args: {variant: "green"}}
execute if score $snail_type eden.technical matches 15 run function animated_java:snail/summon {args: {variant: "pink"}}
execute if score $snail_type eden.technical matches 16 run function animated_java:snail/summon {args: {variant: "purple"}}
execute if score $snail_type eden.technical matches 17 run function animated_java:snail/summon {args: {variant: "red"}}
execute if score $snail_type eden.technical matches 18 run function animated_java:snail/summon {args: {variant: "yellow"}}

execute if score $snail_type eden.technical matches 1..10 run tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.snail.brown
execute if score $snail_type eden.technical matches 11 run tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.snail.blue
execute if score $snail_type eden.technical matches 12 run tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.snail.cyan
execute if score $snail_type eden.technical matches 13 run tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.snail.gray
execute if score $snail_type eden.technical matches 14 run tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.snail.green
execute if score $snail_type eden.technical matches 15 run tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.snail.pink
execute if score $snail_type eden.technical matches 16 run tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.snail.purple
execute if score $snail_type eden.technical matches 17 run tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.snail.red
execute if score $snail_type eden.technical matches 18 run tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.snail.yellow

ride @n[type=item_display,tag=aj.snail.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

execute as @n[type=item_display,tag=aj.snail.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.snail.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger