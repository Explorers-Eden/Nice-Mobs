summon villager ~ ~ ~ {\
CustomNameVisible:0b,\
CustomName:{"bold":false,"fallback":"Tuff Golem","italic":false,"translate":"entity.nice_mobs.tuff_golem"},\
DeathLootTable:"nice_mobs:entity/tuff_golem",\
Silent:1b,\
PersistenceRequired:1b,\
CanPickUpLoot:0b,\
Health:150f,\
Willing:0b,\
VillagerData:{level:99,profession:"minecraft:nitwit"},\
data:{nice_mobs:{spawned_in_version:"2.0",action:0b,animation:"default",hurt:0b,variant:"white",holds_item:0b}},\
Tags:["nice_mobs.base","nice_mobs.tuff_golem.vehicle","mob_manager.settings.exclude"],\
active_effects:[{id:"minecraft:invisibility",amplifier:2,duration:-1,show_particles:0b,show_icon:0b,ambient:1b}],\
attributes:[{id:"minecraft:max_health",base:150},{id:"minecraft:movement_speed",base:.18},{id:"minecraft:scale",base:0.58}]\
}

function animated_java:tuff_golem/summon {args: {variant: "white"}}
execute as @e[type=minecraft:item_display,tag=aj.global.entity,distance=..3] run data modify entity @s view_range set value 0.75

ride @n[type=item_display,tag=aj.tuff_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] mount @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3]

scoreboard players set @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] nice_mobs.entity.generic_timer 0

execute as @n[type=item_display,tag=aj.tuff_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] run data modify entity @s Rotation[1] set value 0f

tag @n[type=item_display,tag=aj.tuff_golem.root,tag=!nice_mobs.has_vehicle,distance=..3] add nice_mobs.has_vehicle
tag @n[type=villager,tag=nice_mobs.tuff_golem.vehicle,tag=!nice_mobs.has_passenger,distance=..3] add nice_mobs.has_passenger