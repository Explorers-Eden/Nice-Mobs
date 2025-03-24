summon creeper ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:'{"bold":false,"fallback":"Bloomer","italic":false,"translate":"entity.nice_mobs.bloomer"}',\
CanPickUpLoot:0b,\
powered:0b,\
ExplosionRadius:0b,\
Fuse:30,\
ignited:0b,\
Tags:["nice_mobs.base","nice_mobs.bloomer.vehicle","eden.scaled","eden.baby_mount.set","eden.tweaked"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:scale",base:.95}]\
}

function animated_java:bloomer/summon {args: {}}

ride @n[type=item_display,tag=aj.bloomer.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=creeper,tag=nice_mobs.bloomer.vehicle,tag=!nice_mobs.has_passenger,distance=..3]
scoreboard players set @n[type=creeper,tag=nice_mobs.bloomer.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.action 0

execute as @n[type=item_display,tag=aj.bloomer.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.bloomer.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=creeper,tag=nice_mobs.bloomer.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger