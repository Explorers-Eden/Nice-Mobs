summon pig ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Snail","italic":false,"translate":"entity.nice_mobs.snail"},\
DeathLootTable:"nice_mobs:entity/snail",\
variant:"nice_mobs:invis_base",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:8f,\
Saddle:0b,\
Age:2400,\
data:{nice_mobs:{spawned_in_version:"2.0",action:0b,animation:"default",hurt:0b,variant:"cyan"}},\
Tags:["nice_mobs.base","nice_mobs.snail.vehicle","mob_manager.settings.exclude"],\
attributes:[{id:"minecraft:max_health",base:8},{id:"minecraft:movement_speed",base:.07},{id:"minecraft:scale",base:0.35}]\
}


function animated_java:snail/summon {args: {variant: "cyan"}}
execute as @e[type=minecraft:item_display,tag=aj.global.entity,distance=..3] run data modify entity @s view_range set value 0.75

ride @n[type=item_display,tag=aj.snail.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

execute as @n[type=item_display,tag=aj.snail.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.snail.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pig,tag=nice_mobs.snail.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger