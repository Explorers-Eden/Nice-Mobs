summon zombie_horse ~ ~ ~ {SaddleItem:{id:"minecraft:saddle",count:1b,components:{"minecraft:custom_data":{nice_mobs:remove}}},Tame:1b,CustomNameVisible:0b,CustomName:'{"bold":false,"italic":false,"text":"Mushling"}',DeathLootTable:"eden:entity/mushling",Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Health:14f,Saddle:0b,Tags:["nice_mobs.base","nice_mobs.mushling.vehicle","eden.scaled","eden.baby_mount.set"],active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],attributes:[{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:.12},{id:"minecraft:scale",base:0.42}]}

execute store result score $mushling_type eden.technical run random value 1..10
execute if score $mushling_type eden.technical matches 1..7 run function animated_java:mushling/summon {args: {}}
execute if score $mushling_type eden.technical matches 8..10 run function animated_java:mushling/summon {args: {variant: "brown"}}

execute if score $mushling_type eden.technical matches 1..5 run tag @n[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.mushling.red
execute if score $mushling_type eden.technical matches 6..10 run tag @n[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.mushling.brown

ride @n[type=item_display,tag=aj.mushling.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.timer 0

execute as @n[type=item_display,tag=aj.mushling.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.mushling.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=zombie_horse,tag=nice_mobs.mushling.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger