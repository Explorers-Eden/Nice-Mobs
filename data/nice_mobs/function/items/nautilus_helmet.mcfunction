schedule function nice_mobs:items/nautilus_helmet 3s

execute as @e[type=#eden:hostile_aquatic,predicate=eden:percentages/50] at @s if items entity @e[type=minecraft:player,distance=..5] armor.head minecraft:turtle_helmet[minecraft:custom_data={nice_mobs:"nautilus_helmet"}] run damage @s 1.5 minecraft:drown 
