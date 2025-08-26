loot spawn ~ ~ ~ loot nice_mobs:entity/piggy_bank
execute anchored eyes run particle minecraft:wax_on ~ ~.6 ~ .5 .5 .5 10 25
playsound minecraft:block.trial_spawner.eject_item neutral @a ~ ~ ~ 1 1
data modify entity @s data.nice_mobs.hurt set value 1b