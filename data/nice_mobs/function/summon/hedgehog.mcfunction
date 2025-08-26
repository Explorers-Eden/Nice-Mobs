execute store result score $hedgehog_type nice_mobs.technical run random value 1..2
execute if score $hedgehog_type nice_mobs.technical matches 1 run function nice_mobs:summon/hedgehog/black
execute if score $hedgehog_type nice_mobs.technical matches 2 run function nice_mobs:summon/hedgehog/brown