summon vex ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:'{"bold":false,"fallback":"Pufftail","italic":false,"translate":"entity.nice_mobs.pufftail"}',\
DeathLootTable:"eden:entity/pufftail",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:80f,\
Tags:["nice_mobs.base","nice_mobs.pufftail.vehicle","eden.scaled","eden.baby_mount.set","eden.quest.set","eden.name.set"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:80},{id:"minecraft:movement_speed",base:.17},{id:"minecraft:scale",base:5}]\
}

function animated_java:pufftail/summon {args: {}}

ride @n[type=item_display,tag=aj.pufftail.root,tag=!nice_mobs.has_vehicle,distance=..5] mount @n[type=vex,tag=nice_mobs.pufftail.vehicle,tag=!nice_mobs.has_passenger,distance=..5]

scoreboard players set @n[type=vex,tag=nice_mobs.pufftail.vehicle,tag=!nice_mobs.has_passenger,distance=..5] nice_mobs.entity.timer 0

tag @n[type=item_display,tag=aj.pufftail.root,tag=!nice_mobs.has_vehicle,distance=..5] add nice_mobs.has_vehicle
tag @n[type=vex,tag=nice_mobs.pufftail.vehicle,tag=!nice_mobs.has_passenger,distance=..5] add nice_mobs.has_passenger