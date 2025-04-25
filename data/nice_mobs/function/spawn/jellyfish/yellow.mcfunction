summon wither_skeleton ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Jellyfish","italic":false,"translate":"entity.nice_mobs.jellyfish"},\
DeathLootTable:"eden:entity/jellyfish",\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Silent:1b,\
Health:16f,\
Tags:["nice_mobs.base","nice_mobs.jellyfish.vehicle","eden.scaled","eden.baby_mount.set","eden.equipped","eden.rarity_mob"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:attack_damage",base:0.001},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0},{id:"minecraft:scale",base:0.35}]\
}

function animated_java:jellyfish/summon {args: {variant: "yellow"}}
tag @n[type=wither_skeleton,tag=nice_mobs.jellyfish.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.jellyfish.yellow

ride @n[type=item_display,tag=aj.jellyfish.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=wither_skeleton,tag=nice_mobs.jellyfish.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

execute as @n[type=item_display,tag=aj.jellyfish.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f
execute as @n[type=item_display,tag=aj.jellyfish.root,tag=!nice_mobs.has_vehicle,distance=..3] run function animated_java:jellyfish/animations/default/play

tag @n[type=item_display,tag=aj.jellyfish.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=wither_skeleton,tag=nice_mobs.jellyfish.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger