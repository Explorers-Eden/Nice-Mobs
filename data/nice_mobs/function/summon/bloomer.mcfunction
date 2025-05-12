summon creeper ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Bloomer","italic":false,"translate":"entity.nice_mobs.bloomer"},\
CanPickUpLoot:0b,\
powered:0b,\
ExplosionRadius:0b,\
Fuse:30,\
ignited:0b,\
data:{nice_mobs:{spawned_in_version:1.7d,action:0b,animation:"default",hurt:0b,variant:"default"}},\
Tags:["nice_mobs.base","nice_mobs.bloomer.vehicle","eden.scaled","eden.baby_mount.set","eden.tweaked"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:scale",base:.95}]\
}

function animated_java:bloomer/summon {args: {variant: "default"}}

ride @n[type=item_display,tag=aj.bloomer.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=creeper,tag=nice_mobs.bloomer.vehicle,tag=!nice_mobs.has_passenger,distance=..3]
scoreboard players set @n[type=creeper,tag=nice_mobs.bloomer.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.action 0

tag @n[type=item_display,tag=aj.bloomer.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=creeper,tag=nice_mobs.bloomer.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger