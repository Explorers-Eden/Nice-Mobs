summon iron_golem ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Copper Golem","italic":false,"translate":"entity.nice_mobs.copper_golem"},\
DeathLootTable:"eden:entity/copper_golem",\
PlayerCreated:0b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:60f,\
data:{nice_mobs:{spawned_in_version:"1.8",action:0b,animation:"default",hurt:0b,variant:"default"}},\
Tags:["nice_mobs.base","nice_mobs.copper_golem.vehicle","mob_manager.settings.exclude"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:60},{id:"minecraft:scale",base:0.58},{id:"minecraft:attack_damage",base:5},{id:"minecraft:movement_speed",base:0.2}]\
}

function animated_java:copper_golem/summon {args: {}}

tag @n[type=iron_golem,tag=nice_mobs.copper_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.copper_golem

ride @n[type=item_display,tag=aj.copper_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=iron_golem,tag=nice_mobs.copper_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=iron_golem,tag=nice_mobs.copper_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.generic_timer 0

execute as @n[type=item_display,tag=aj.copper_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.copper_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=iron_golem,tag=nice_mobs.copper_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger