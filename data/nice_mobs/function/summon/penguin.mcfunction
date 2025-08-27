summon chicken ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Penguin","italic":false,"translate":"entity.nice_mobs.penguin"},\
DeathLootTable:"nice_mobs:entity/penguin",\
variant:"nice_mobs:invis_base",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:18f,\
Saddle:0b,\
Age:2400,\
data:{nice_mobs:{spawned_in_version:"2.1",action:0b,animation:"default",hurt:0b,variant:"default",is_bartering:0b}},\
Tags:["nice_mobs.base","nice_mobs.penguin.vehicle","mob_manager.settings.exclude"],\
attributes:[{id:"minecraft:max_health",base:18},{id:"minecraft:movement_speed",base:.11},{id:"minecraft:scale",base:0.78}]\
}

function animated_java:penguin/summon {args: {}}
execute as @e[type=minecraft:item_display,tag=aj.global.entity,distance=..3] run data modify entity @s view_range set value 0.75

ride @n[type=item_display,tag=aj.penguin.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=chicken,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=chicken,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.generic_timer 0
execute as @n[type=item_display,tag=aj.penguin.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.penguin.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=chicken,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger