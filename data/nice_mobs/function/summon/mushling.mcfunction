execute store result score $mushling_type nice_mobs.technical run random value 1..10
execute if score $mushling_type nice_mobs.technical matches 1..7 run return run function nice_mobs:summon/mushling/red
execute if score $mushling_type nice_mobs.technical matches 8..10 run return run function nice_mobs:summon/mushling/brown