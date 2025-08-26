summon bee ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Butterfly","italic":false,"translate":"entity.nice_mobs.butterfly"},\
DeathLootTable:"nice_mobs:entity/butterfly",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:10f,\
CannotEnterHiveTicks:9999,\
data:{nice_mobs:{spawned_in_version:"2.0",action:0b,animation:"default",hurt:0b,variant:"purple",effect:"minecraft:regeneration"}},\
Tags:["nice_mobs.base","nice_mobs.butterfly.vehicle","mob_manager.settings.exclude"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:attack_speed",base:0},{id:"minecraft:max_health",base:10},{id:"minecraft:scale",base:0.58}]\
}

function animated_java:butterfly/summon {args: {variant: "purple"}}
execute as @e[type=minecraft:item_display,tag=aj.global.entity,distance=..3] run data modify entity @s view_range set value 0.75

ride @n[type=item_display,tag=aj.butterfly.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=bee,tag=nice_mobs.butterfly.vehicle,tag=!nice_mobs.has_passenger,distance=..3]
execute as @n[type=item_display,tag=aj.butterfly.root,tag=!nice_mobs.has_vehicle,distance=..3] run function animated_java:butterfly/animations/default/play

execute as @n[type=item_display,tag=aj.butterfly.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.butterfly.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=bee,tag=nice_mobs.butterfly.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger