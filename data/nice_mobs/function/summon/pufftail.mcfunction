summon vex ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Pufftail","italic":false,"translate":"entity.nice_mobs.pufftail"},\
DeathLootTable:"nice_mobs:entity/pufftail",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:350f,\
data:{nice_mobs:{spawned_in_version:"2.1",action:0b,animation:"default",hurt:0b,variant:"default"}},\
Tags:["nice_mobs.base","nice_mobs.pufftail.vehicle","mob_manager.settings.exclude"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:350},{id:"minecraft:scale",base:5},{id:"minecraft:armor",base:10},{id:"minecraft:follow_range",base:40}]\
}

function animated_java:pufftail/summon {args: {}}

execute as @n[type=vex,tag=nice_mobs.pufftail.vehicle,tag=!nice_mobs.has_passenger,distance=..5] positioned ~ ~5 ~ run data modify entity @s BoundX set from entity @s Pos[0]
execute as @n[type=vex,tag=nice_mobs.pufftail.vehicle,tag=!nice_mobs.has_passenger,distance=..5] positioned ~ ~5 ~ run data modify entity @s BoundY set from entity @s Pos[1]
execute as @n[type=vex,tag=nice_mobs.pufftail.vehicle,tag=!nice_mobs.has_passenger,distance=..5] positioned ~ ~5 ~ run data modify entity @s BoundZ set from entity @s Pos[2]

ride @n[type=item_display,tag=aj.pufftail.root,tag=!nice_mobs.has_vehicle,distance=..5] mount @n[type=vex,tag=nice_mobs.pufftail.vehicle,tag=!nice_mobs.has_passenger,distance=..5]

scoreboard players set @n[type=vex,tag=nice_mobs.pufftail.vehicle,tag=!nice_mobs.has_passenger,distance=..5] nice_mobs.entity.generic_timer 0

execute as @n[type=item_display,tag=aj.pufftail.root,tag=!nice_mobs.has_vehicle,distance=..5] run function nice_mobs:pufftail/bossbar/create/init

tag @n[type=item_display,tag=aj.pufftail.root,tag=!nice_mobs.has_vehicle,distance=..5] add nice_mobs.has_vehicle
tag @n[type=vex,tag=nice_mobs.pufftail.vehicle,tag=!nice_mobs.has_passenger,distance=..5] add nice_mobs.has_passenger