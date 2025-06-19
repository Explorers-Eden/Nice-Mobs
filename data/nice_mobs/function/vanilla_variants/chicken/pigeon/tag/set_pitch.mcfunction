execute store result score $pigeon_pitch eden.technical run random value 1..12


execute if score $pigeon_pitch eden.technical matches 1 run return run data modify entity @s data.nice_mobs.coo_pitch set value 0.8
execute if score $pigeon_pitch eden.technical matches 2..3 run return run data modify entity @s data.nice_mobs.coo_pitch set value 0.9
execute if score $pigeon_pitch eden.technical matches 4..7 run return run data modify entity @s data.nice_mobs.coo_pitch set value 1
execute if score $pigeon_pitch eden.technical matches 8..9 run return run data modify entity @s data.nice_mobs.coo_pitch set value 1.1
execute if score $pigeon_pitch eden.technical matches 10..11 run return run data modify entity @s data.nice_mobs.coo_pitch set value 1.2
execute if score $pigeon_pitch eden.technical matches 12 run return run data modify entity @s data.nice_mobs.coo_pitch set value 1.2
