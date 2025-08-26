item modify entity @s weapon.offhand nice_mobs:used_nautilus_horn
advancement revoke @s only nice_mobs:used_nautilus_horn

execute if data storage eden:settings nice_mobs.spawning{pufftail:"disabled"} run return fail

execute positioned ^ ^3 ^6 run function nice_mobs:summon/pufftail
execute positioned ^ ^5 ^6 run particle dust{color:[1.000,1.000,1.000],scale:4} ~ ~ ~ 1 1 1 0.1 50 force
execute positioned ^ ^5 ^6 run particle dust{color:[0.361,0.827,1.000],scale:4} ~ ~ ~ 1 1 1 0.1 50 force
execute positioned ^ ^3 ^6 run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ .5 .5