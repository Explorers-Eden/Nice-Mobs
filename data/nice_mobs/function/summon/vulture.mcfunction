summon phantom ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Vulture","italic":false,"translate":"entity.nice_mobs.vulture"},\
DeathLootTable:"nice_mobs:entity/vulture",\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:30f,\
data:{nice_mobs:{spawned_in_version:"2.0",action:0b,animation:"default",hurt:0b,variant:"default"}},\
Tags:["nice_mobs.base","nice_mobs.vulture.vehicle","mob_manager.settings.exclude"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:burning_time",base:0},{id:"minecraft:max_health",base:30},{id:"minecraft:scale",base:1}]\
}

function animated_java:vulture/summon {args: {}}
execute as @e[type=minecraft:item_display,tag=aj.global.entity,distance=..3] run data modify entity @s view_range set value 0.75

ride @n[type=item_display,tag=aj.vulture.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=phantom,tag=nice_mobs.vulture.vehicle,tag=!nice_mobs.has_passenger,distance=..3]
execute as @n[type=item_display,tag=aj.vulture.root,tag=!nice_mobs.has_vehicle,distance=..3] run function animated_java:vulture/animations/default/play
execute as @n[type=item_display,tag=aj.vulture.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.vulture.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=phantom,tag=nice_mobs.vulture.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger