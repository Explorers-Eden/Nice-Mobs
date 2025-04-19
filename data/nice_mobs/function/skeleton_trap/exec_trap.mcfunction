summon minecraft:lightning_bolt ~ ~ ~ 

$summon $(type) ~ ~ ~ {active_effects:[{id:"minecraft:resistance",amplifier:255,duration:60,show_particles:0b,show_icon:0b,ambient:1b},{id:"minecraft:fire_resistance",amplifier:255,duration:60,show_particles:0b,show_icon:0b,ambient:1b}],variant:"nice_mobs:skeleton",Passengers:[{id:"minecraft:skeleton",equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:bow",count:1}},drop_chances:{head:0.000,mainhand:0.000}}],data:{SkeletonTrap:0b,type:"$(type)"}}
$summon $(type) ~ ~ ~ {active_effects:[{id:"minecraft:resistance",amplifier:255,duration:60,show_particles:0b,show_icon:0b,ambient:1b},{id:"minecraft:fire_resistance",amplifier:255,duration:60,show_particles:0b,show_icon:0b,ambient:1b}],variant:"nice_mobs:skeleton",Passengers:[{id:"minecraft:skeleton",equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:bow",count:1}},drop_chances:{head:0.000,mainhand:0.000}}],data:{SkeletonTrap:0b,type:"$(type)"}}
$summon $(type) ~ ~ ~ {active_effects:[{id:"minecraft:resistance",amplifier:255,duration:60,show_particles:0b,show_icon:0b,ambient:1b},{id:"minecraft:fire_resistance",amplifier:255,duration:60,show_particles:0b,show_icon:0b,ambient:1b}],variant:"nice_mobs:skeleton",Passengers:[{id:"minecraft:skeleton",equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:bow",count:1}},drop_chances:{head:0.000,mainhand:0.000}}],data:{SkeletonTrap:0b,type:"$(type)"}}
$summon $(type) ~ ~ ~ {active_effects:[{id:"minecraft:resistance",amplifier:255,duration:60,show_particles:0b,show_icon:0b,ambient:1b},{id:"minecraft:fire_resistance",amplifier:255,duration:60,show_particles:0b,show_icon:0b,ambient:1b}],variant:"nice_mobs:skeleton",Passengers:[{id:"minecraft:skeleton",equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:bow",count:1}},drop_chances:{head:0.000,mainhand:0.000}}],data:{SkeletonTrap:0b,type:"$(type)"}}

execute as @e[type=#eden:is_custom_trap,distance=..2] if data entity @s data{SkeletonTrap:0b} at @s run spreadplayers ~ ~ 5 5 false @s

tp @s ~ -3000 ~
kill @s

say exec