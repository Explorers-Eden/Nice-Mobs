effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:resistance 1 255 true

execute unless entity @e[type=area_effect_cloud,tag=nice_mobs.snail.cloud,distance=...3] run summon area_effect_cloud ~ ~ ~ {Particle:{type:"dust",color:[0.514,0.788,0.039],scale:0.4},Radius:1.5f,Duration:100,potion_contents:{custom_effects:[{id:"minecraft:oozing",amplifier:2,duration:100,show_particles:1b,show_icon:1b,ambient:0b},{id:"minecraft:slowness",amplifier:2,duration:100,show_particles:0b,show_icon:1b,ambient:0b}]},Tags:["nice_mobs.snail.cloud"]}