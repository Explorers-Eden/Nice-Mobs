summon pig ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:'{"bold":false,"italic":false,"text":"Rat"}',\
DeathLootTable:"eden:entity/rat",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:14f,\
Saddle:0b,\
Age:2400,\
Tags:["nice_mobs.base","nice_mobs.rat.vehicle","eden.scaled","eden.baby_mount.set"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:.24},{id:"minecraft:scale",base:0.22}]\
}

function animated_java:rat/summon {args: {variant: "white"}}
tag @n[type=pig,tag=nice_mobs.rat.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.rat.white

ride @n[type=item_display,tag=aj.rat.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pig,tag=nice_mobs.rat.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=pig,tag=nice_mobs.rat.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.timer 0

execute as @n[type=item_display,tag=aj.rat.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.rat.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pig,tag=nice_mobs.rat.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger