execute store result score $hedgehog_type eden.technical run random value 1..2
execute if score $hedgehog_type eden.technical matches 1 run function nice_mobs:summon/hedgehog/black
execute if score $hedgehog_type eden.technical matches 2 run function nice_mobs:summon/hedgehog/brown