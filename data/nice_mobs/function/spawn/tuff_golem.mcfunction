summon villager ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:'{"bold":false,"italic":false,"text":"Tuff Golem"}',\
DeathLootTable:"eden:entity/tuff_golem",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:150f,\
Willing:0b,\
VillagerData:{level:99,profession:"minecraft:nitwit"},\
Tags:["nice_mobs.base","nice_mobs.tuff_golem.vehicle","eden.scaled","eden.baby_mount.set","eden.quest.set","eden.name.set"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:150},{id:"minecraft:movement_speed",base:.18},{id:"minecraft:scale",base:0.58}]\
}

execute store result score $tuff_golem_type eden.technical run random value 1..18
execute if score $tuff_golem_type eden.technical matches 1 run function animated_java:tuff_golem/summon {args: {}}
execute if score $tuff_golem_type eden.technical matches 2 run function animated_java:tuff_golem/summon {args: {variant: "black"}}
execute if score $tuff_golem_type eden.technical matches 3 run function animated_java:tuff_golem/summon {args: {variant: "brown"}}
execute if score $tuff_golem_type eden.technical matches 4 run function animated_java:tuff_golem/summon {args: {variant: "cyan"}}
execute if score $tuff_golem_type eden.technical matches 5 run function animated_java:tuff_golem/summon {args: {variant: "gray"}}
execute if score $tuff_golem_type eden.technical matches 6 run function animated_java:tuff_golem/summon {args: {variant: "green"}}
execute if score $tuff_golem_type eden.technical matches 7 run function animated_java:tuff_golem/summon {args: {variant: "light_blue"}}
execute if score $tuff_golem_type eden.technical matches 8 run function animated_java:tuff_golem/summon {args: {variant: "light_gray"}}
execute if score $tuff_golem_type eden.technical matches 9 run function animated_java:tuff_golem/summon {args: {variant: "lime"}}
execute if score $tuff_golem_type eden.technical matches 10 run function animated_java:tuff_golem/summon {args: {variant: "magenta"}}
execute if score $tuff_golem_type eden.technical matches 11 run function animated_java:tuff_golem/summon {args: {variant: "moss"}}
execute if score $tuff_golem_type eden.technical matches 12 run function animated_java:tuff_golem/summon {args: {variant: "orange"}}
execute if score $tuff_golem_type eden.technical matches 13 run function animated_java:tuff_golem/summon {args: {variant: "pale_moss"}}
execute if score $tuff_golem_type eden.technical matches 14 run function animated_java:tuff_golem/summon {args: {variant: "pink"}}
execute if score $tuff_golem_type eden.technical matches 15 run function animated_java:tuff_golem/summon {args: {variant: "purple"}}
execute if score $tuff_golem_type eden.technical matches 16 run function animated_java:tuff_golem/summon {args: {variant: "red"}}
execute if score $tuff_golem_type eden.technical matches 17 run function animated_java:tuff_golem/summon {args: {variant: "white"}}
execute if score $tuff_golem_type eden.technical matches 18 run function animated_java:tuff_golem/summon {args: {variant: "yellow"}}

execute if score $tuff_golem_type eden.technical matches 1 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.blue
execute if score $tuff_golem_type eden.technical matches 2 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.black
execute if score $tuff_golem_type eden.technical matches 3 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.brown
execute if score $tuff_golem_type eden.technical matches 4 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.cyan
execute if score $tuff_golem_type eden.technical matches 5 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.gray
execute if score $tuff_golem_type eden.technical matches 6 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.green
execute if score $tuff_golem_type eden.technical matches 7 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.light_blue
execute if score $tuff_golem_type eden.technical matches 8 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.light_gray
execute if score $tuff_golem_type eden.technical matches 9 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.lime
execute if score $tuff_golem_type eden.technical matches 10 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.magenta
execute if score $tuff_golem_type eden.technical matches 11 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.moss
execute if score $tuff_golem_type eden.technical matches 12 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.orange
execute if score $tuff_golem_type eden.technical matches 13 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.pale_moss
execute if score $tuff_golem_type eden.technical matches 14 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.pink
execute if score $tuff_golem_type eden.technical matches 15 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.purple
execute if score $tuff_golem_type eden.technical matches 16 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.red
execute if score $tuff_golem_type eden.technical matches 17 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.white
execute if score $tuff_golem_type eden.technical matches 18 run tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.tuff_golem.yellow

ride @n[type=item_display,tag=aj.tuff_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.timer 0

execute as @n[type=item_display,tag=aj.tuff_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.tuff_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger