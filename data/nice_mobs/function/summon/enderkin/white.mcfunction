summon pig ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Enderkin","italic":false,"translate":"entity.nice_mobs.enderkin"},\
DeathLootTable:"minecraft:entities/enderman",\
variant:"nice_mobs:invis_base",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:74f,\
Saddle:0b,\
Age:2400,\
data:{nice_mobs:{spawned_in_version:"1.8",action:0b,animation:"default",hurt:0b,variant:"white",is_bartering:0b}},\
Tags:["nice_mobs.base","nice_mobs.enderkin.vehicle","mob_manager.settings.exclude"],\
attributes:[{id:"minecraft:max_health",base:74},{id:"minecraft:movement_speed",base:.15},{id:"minecraft:scale",base:0.9},{id:"minecraft:safe_fall_distance",base:32}]\
}

function animated_java:enderkin/summon {args: {variant: "white"}}

ride @n[type=item_display,tag=aj.enderkin.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pig,tag=nice_mobs.enderkin.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=pig,tag=nice_mobs.enderkin.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.generic_timer 0

tag @n[type=item_display,tag=aj.enderkin.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pig,tag=nice_mobs.enderkin.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger