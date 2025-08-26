summon pig ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Mushling","italic":false,"translate":"entity.nice_mobs.mushling"},\
DeathLootTable:"nice_mobs:entity/mushling",\
variant:"nice_mobs:invis_base",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:14f,\
Saddle:0b,\
Age:2400,\
data:{nice_mobs:{spawned_in_version:"2.0",action:0b,animation:"default",hurt:0b,variant:"brown"}},\
Tags:["nice_mobs.base","nice_mobs.mushling.vehicle","mob_manager.settings.exclude"],\
attributes:[{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:.12},{id:"minecraft:scale",base:0.65}]\
}

function animated_java:mushling/summon {args: {variant: "brown"}}
execute as @e[type=minecraft:item_display,tag=aj.global.entity,distance=..3] run data modify entity @s view_range set value 0.75

ride @n[type=item_display,tag=aj.mushling.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pig,tag=nice_mobs.mushling.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=pig,tag=nice_mobs.mushling.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.generic_timer 0

execute as @n[type=item_display,tag=aj.mushling.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.mushling.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pig,tag=nice_mobs.mushling.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger