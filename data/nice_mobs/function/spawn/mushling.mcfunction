execute store result score $mushling_type eden.technical run random value 1..10
execute if score $mushling_type eden.technical matches 1..7 run return run function nice_mobs:spawn/mushling/red
execute if score $mushling_type eden.technical matches 8..10 run return run function nice_mobs:spawn/mushling/brown