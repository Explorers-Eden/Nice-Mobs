summon pig ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Cruncher","italic":false,"translate":"entity.nice_mobs.cruncher"},\
DeathLootTable:"eden:entity/cruncher",\
variant:"nice_mobs:invis_base",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:30f,\
Age:2400,\
data:{nice_mobs:{spawned_in_version:1.7d,action:0b,animation:"default",hurt:0b,variant:"default",ore_type_last_eaten:"none",inventory:{coal:0,copper:0,iron:0,redstone:0,lapis:0,diamond:0,gold:0,emerald:0}}},\
Tags:["nice_mobs.base","nice_mobs.cruncher.vehicle","eden.settings.applied","eden.equipped","eden.rarity_mob"],\
active_effects:[{id:"minecraft:fire_resistance",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:.10},{id:"minecraft:scale",base:0.72},{id:"minecraft:safe_fall_distance",base:1024},{id:"minecraft:burning_time",base:0}]\
}

function animated_java:cruncher/summon {args: {}}

ride @n[type=item_display,tag=aj.cruncher.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.generic_timer 0
scoreboard players set @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.cruncher.ores_holding 0

tag @n[type=item_display,tag=aj.cruncher.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pig,tag=nice_mobs.cruncher.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger