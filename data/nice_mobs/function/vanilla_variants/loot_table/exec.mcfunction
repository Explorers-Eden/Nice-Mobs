execute if data entity @s {variant:"nice_mobs:skeleton"} run data modify entity @s DeathLootTable set value "minecraft:entities/skeleton_horse"
execute if data entity @s {variant:"nice_mobs:ender"} run data modify entity @s DeathLootTable set value "minecraft:entities/enderman"

execute as @s[type=chicken] if data entity @s {variant:"nice_mobs:strider"} run data modify entity @s DeathLootTable set value "minecraft:entities/strider"
execute as @s[type=chicken] if data entity @s {variant:"nice_mobs:zombie"} run data modify entity @s DeathLootTable set value "minecraft:entities/zombie"
execute as @s[type=chicken] if data entity @s {variant:"nice_mobs:duck"} run data modify entity @s DeathLootTable set value "nice_mobs:entity/duck"

execute as @s[type=cow] if data entity @s {variant:"nice_mobs:yellow_moobloom"} run data modify entity @s DeathLootTable set value "nice_mobs:entity/yellow_moobloom"
execute as @s[type=cow] if data entity @s {variant:"nice_mobs:pink_moobloom"} run data modify entity @s DeathLootTable set value "nice_mobs:entity/pink_moobloom"

execute as @s[type=pig] if data entity @s {variant:"nice_mobs:muddy_cold"} run data modify entity @s DeathLootTable set value "nice_mobs:entity/muddy_pig"
execute as @s[type=pig] if data entity @s {variant:"nice_mobs:muddy_creamy"} run data modify entity @s DeathLootTable set value "nice_mobs:entity/muddy_pig"
execute as @s[type=pig] if data entity @s {variant:"nice_mobs:muddy_dark"} run data modify entity @s DeathLootTable set value "nice_mobs:entity/muddy_pig"
execute as @s[type=pig] if data entity @s {variant:"nice_mobs:muddy_pale"} run data modify entity @s DeathLootTable set value "nice_mobs:entity/muddy_pig"
execute as @s[type=pig] if data entity @s {variant:"nice_mobs:muddy_temperate"} run data modify entity @s DeathLootTable set value "nice_mobs:entity/muddy_pig"
execute as @s[type=pig] if data entity @s {variant:"nice_mobs:muddy_warm"} run data modify entity @s DeathLootTable set value "nice_mobs:entity/muddy_pig"
execute as @s[type=pig] if data entity @s {variant:"nice_mobs:muddy_wild"} run data modify entity @s DeathLootTable set value "nice_mobs:entity/muddy_pig"

tag @s add nice_mobs.modified_loot_table
