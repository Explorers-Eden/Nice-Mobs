summon pig ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Nautilus Crab","italic":false,"translate":"entity.nice_mobs.nautilus_crab"},\
DeathLootTable:"eden:entity/nautilus_crab",\
variant:"nice_mobs:invis_base",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:30f,\
Saddle:0b,\
Age:2400,\
Tags:["nice_mobs.base","nice_mobs.nautilus_crab.vehicle","eden.scaled","eden.baby_mount.set"],\
attributes:[{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:.12},{id:"minecraft:scale",base:0.34}]\
}

function animated_java:nautilus_crab/summon {args: {variant: "pink"}}
tag @n[type=pig,tag=nice_mobs.nautilus_crab.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.nautilus_crab.pink

ride @n[type=item_display,tag=aj.nautilus_crab.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pig,tag=nice_mobs.nautilus_crab.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=pig,tag=nice_mobs.nautilus_crab.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.timer 0

tag @n[type=item_display,tag=aj.nautilus_crab.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pig,tag=nice_mobs.nautilus_crab.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger