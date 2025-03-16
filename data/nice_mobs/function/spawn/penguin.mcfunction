summon pig ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:'{"bold":false,"italic":false,"text":"Penguin"}',\
DeathLootTable:"eden:entity/penguin",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:18f,\
Saddle:0b,\
Age:2400,\
Tags:["nice_mobs.base","nice_mobs.penguin.vehicle","eden.scaled","eden.baby_mount.set"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:18},{id:"minecraft:movement_speed",base:.11},{id:"minecraft:scale",base:0.63}]\
}

function animated_java:penguin/summon {args: {}}

ride @n[type=item_display,tag=aj.penguin.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pig,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=pig,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.timer 0

execute as @n[type=item_display,tag=aj.penguin.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.penguin.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pig,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger