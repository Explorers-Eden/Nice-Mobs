summon pig ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Piggy Bank","italic":false,"translate":"entity.nice_mobs.piggy_bank"},\
DeathLootTable:"eden:entity/piggy_bank",\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:50f,\
Age:2400,\
variant:"nice_mobs:piggy_bank",\
data:{nice_mobs:{action:0b,animation:"default",hurt:0b,variant:"default"}},\
Tags:["nice_mobs.base","nice_mobs.piggy_bank.vehicle","eden.scaled","eden.baby_mount.set"],\
attributes:[{id:"minecraft:max_absorption",base:2},{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:.40},{id:"minecraft:scale",base:1},{id:"minecraft:safe_fall_distance",base:1024}]\
}

function animated_java:treasure_chest/summon {args: {}}

ride @n[type=item_display,tag=aj.treasure_chest.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pig,tag=nice_mobs.piggy_bank.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

tag @n[type=item_display,tag=aj.treasure_chest.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pig,tag=nice_mobs.piggy_bank.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger