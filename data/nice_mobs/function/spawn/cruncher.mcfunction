summon pig ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"cruncher","italic":false,"translate":"entity.nice_mobs.cruncher"},\
DeathLootTable:"eden:entity/cruncher",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:30f,\
IsScreamingpig:0b,\
HasLeftHorn:0b,\
HasRightHorn:0b,\
Age:2400,\
Tags:["nice_mobs.base","nice_mobs.cruncher.vehicle","eden.scaled","eden.baby_mount.set"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b},{id:"minecraft:fire_resistance",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:.10},{id:"minecraft:scale",base:0.72},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:burning_time",base:0}]\
}

function animated_java:cruncher/summon {args: {}}

ride @n[type=item_display,tag=aj.cruncher.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.timer 0

scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.cruncher.total_ore_count 0
scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.cruncher.coal 0
scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.cruncher.copper 0
scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.cruncher.iron 0
scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.cruncher.redstone 0
scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.cruncher.lapis 0
scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.cruncher.diamond 0
scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.cruncher.gold 0
scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.cruncher.emerald 0

tag @n[type=item_display,tag=aj.cruncher.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger