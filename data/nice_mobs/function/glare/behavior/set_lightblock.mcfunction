execute unless entity @e[type=area_effect_cloud,tag=nice_mobs.glare.lightblock,distance=..0.5] run summon area_effect_cloud ^ ^ ^ {Duration:10,Tags:["nice_mobs.glare.lightblock"]}
execute if entity @e[type=area_effect_cloud,tag=nice_mobs.glare.lightblock,distance=..0.5] unless entity @e[type=marker,tag=nice_mobs.glare.lightblock,distance=..0.5] run summon marker ^ ^ ^ {Tags:["nice_mobs.glare.lightblock"]}
execute if entity @e[type=area_effect_cloud,tag=nice_mobs.glare.lightblock,distance=..0.5] if entity @e[type=marker,tag=nice_mobs.glare.lightblock,distance=..0.5] run setblock ^ ^ ^ light[level=8,waterlogged=false]