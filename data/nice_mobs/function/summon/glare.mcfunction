execute store result score $glare_type eden.technical run random value 1..3
execute if score $glare_type eden.technical matches 1..2 run function nice_mobs:summon/glare/moss
execute if score $glare_type eden.technical matches 3 run function nice_mobs:summon/glare/pale_moss