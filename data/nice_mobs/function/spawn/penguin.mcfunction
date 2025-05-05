summon chicken ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Penguin","italic":false,"translate":"entity.nice_mobs.penguin"},\
DeathLootTable:"eden:entity/penguin",\
variant:"nice_mobs:invis_base",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:18f,\
Saddle:0b,\
Age:2400,\
data:{nice_mobs:{action:0b,animation:"default",hurt:0b,variant:"default"}},\
Tags:["nice_mobs.base","nice_mobs.penguin.vehicle","eden.scaled","eden.baby_mount.set"],\
attributes:[{id:"minecraft:max_health",base:18},{id:"minecraft:movement_speed",base:.11},{id:"minecraft:scale",base:0.78}]\
}

function animated_java:penguin/summon {args: {}}

ride @n[type=item_display,tag=aj.penguin.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=chicken,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=chicken,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.timer 0

tag @n[type=item_display,tag=aj.penguin.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=chicken,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger