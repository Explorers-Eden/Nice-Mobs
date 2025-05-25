execute if data storage eden:gamerule nice_mobs.behavior{wanderingvariants:"Disabled"} run return run tag @s add nice_mobs.companions.done
execute if predicate eden:percentages/60 run return run tag @s add nice_mobs.companions.done

tag @s add nice_mobs.companions.done

$execute as @n[type=minecraft:trader_llama,distance=..8] if data entity @s leash{UUID:$(UUID)} at @s run function nice_mobs:misc/kill
$execute as @n[type=minecraft:trader_llama,distance=..8] if data entity @s leash{UUID:$(UUID)} at @s run function nice_mobs:misc/kill

execute if predicate eden:percentages/50 run return run function nice_mobs:vanilla_variants/wandering/pig with entity @s
function nice_mobs:vanilla_variants/wandering/cow with entity @s