execute store result score $enderkin_type eden.technical run random value 1..8
execute if score $enderkin_type eden.technical matches 1..4 run function nice_mobs:summon/enderkin/pink
execute if score $enderkin_type eden.technical matches 5 run function nice_mobs:summon/enderkin/red
execute if score $enderkin_type eden.technical matches 6 run function nice_mobs:summon/enderkin/blue
execute if score $enderkin_type eden.technical matches 7 run function nice_mobs:summon/enderkin/yellow
execute if score $enderkin_type eden.technical matches 8 run function nice_mobs:summon/enderkin/green