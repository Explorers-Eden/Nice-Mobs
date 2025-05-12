summon villager ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Dirt Golem","italic":false,"translate":"entity.nice_mobs.dirt_golem"},\
DeathLootTable:"eden:entity/dirt_golem",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:80f,\
Willing:0b,\
data:{nice_mobs:{spawned_in_version:1.7d,action:0b,animation:"default",hurt:0b,variant:"default"}},\
VillagerData:{level:99,profession:"minecraft:nitwit"},\
Tags:["nice_mobs.base","nice_mobs.dirt_golem.vehicle","eden.scaled","eden.baby_mount.set","eden.quest.set","eden.name.set"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:80},{id:"minecraft:movement_speed",base:.17},{id:"minecraft:scale",base:0.55}]\
}

function animated_java:dirt_golem/summon {args: {variant: "default"}}

ride @n[type=item_display,tag=aj.dirt_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=villager,tag=nice_mobs.dirt_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=villager,tag=nice_mobs.dirt_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.generic_timer 0

tag @n[type=item_display,tag=aj.dirt_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=villager,tag=nice_mobs.dirt_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger