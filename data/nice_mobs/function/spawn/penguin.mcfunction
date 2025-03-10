summon zombie_horse ~ ~ ~ {SaddleItem:{id:"minecraft:saddle",count:1b,components:{"minecraft:custom_data":{nice_mobs:remove}}},Tame:1b,CustomNameVisible:0b,CustomName:'{"bold":false,"italic":false,"text":"Penguin"}',DeathLootTable:"eden:entity/penguin",Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Health:18f,Saddle:0b,Tags:["nice_mobs.penguin.vehicle","eden.scaled","eden.baby_mount.set"],active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],attributes:[{id:"minecraft:max_health",base:18},{id:"minecraft:movement_speed",base:.11},{id:"minecraft:scale",base:0.42}]}
function animated_java:penguin/summon {args: {}}

tag @n[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.penguin

ride @n[type=item_display,tag=aj.penguin.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

tag @n[type=item_display,tag=aj.penguin.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=zombie_horse,tag=nice_mobs.penguin.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger