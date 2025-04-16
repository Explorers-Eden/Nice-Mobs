summon pillager ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"italic":false,"text":"Glare"},\
DeathLootTable:"eden:entity/glare",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:75f,\
IsBaby:0b,\
PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,\
Tags:["nice_mobs.base","nice_mobs.glare.vehicle","eden.scaled","eden.baby_mount.set","eden.tweaked","eden.equipped","eden.rarity_mob"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:follow_range",base:64},{id:"minecraft:tempt_range",base:64},{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:0},{id:"minecraft:attack_speed",base:0},{id:"minecraft:max_health",base:75},{id:"minecraft:movement_speed",base:.22},{id:"minecraft:scale",base:.85},{id:"minecraft:gravity",base:0.03},{id:"minecraft:step_height",base:3},{id:"minecraft:safe_fall_distance",base:1024}]\
}

function animated_java:glare/summon {args: {variant: "pale"}}
tag @n[type=pillager,tag=nice_mobs.glare.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.glare.pale_moss

ride @n[type=item_display,tag=aj.glare.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pillager,tag=nice_mobs.glare.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

execute as @n[type=item_display,tag=aj.glare.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.glare.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pillager,tag=nice_mobs.glare.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger