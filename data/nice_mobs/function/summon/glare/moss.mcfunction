summon pillager ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Glare","italic":false,"translate":"entity.nice_mobs.glare"},\
DeathLootTable:"nice_mobs:entity/glare",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:75f,\
IsBaby:0b,\
PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,\
data:{nice_mobs:{spawned_in_version:"2.0",action:0b,animation:"default",hurt:0b,variant:"default"}},\
Tags:["nice_mobs.base","nice_mobs.glare.vehicle","mob_manager.settings.exclude"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:follow_range",base:64},{id:"minecraft:tempt_range",base:64},{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:0},{id:"minecraft:attack_speed",base:0},{id:"minecraft:max_health",base:75},{id:"minecraft:movement_speed",base:.22},{id:"minecraft:scale",base:.85},{id:"minecraft:gravity",base:0.03},{id:"minecraft:step_height",base:3},{id:"minecraft:safe_fall_distance",base:1024}]\
}

function animated_java:glare/summon {args: {}}
execute as @e[type=minecraft:item_display,tag=aj.global.entity,distance=..3] run data modify entity @s view_range set value 0.75

ride @n[type=item_display,tag=aj.glare.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=pillager,tag=nice_mobs.glare.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

execute as @n[type=item_display,tag=aj.glare.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.glare.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=pillager,tag=nice_mobs.glare.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger