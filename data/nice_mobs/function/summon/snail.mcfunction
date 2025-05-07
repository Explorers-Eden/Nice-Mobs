execute store result score $snail_type eden.technical run random value 1..18
execute if score $snail_type eden.technical matches 1..10 run return run function nice_mobs:summon/snail/brown
execute if score $snail_type eden.technical matches 11 run return run function nice_mobs:summon/snail/blue
execute if score $snail_type eden.technical matches 12 run return run function nice_mobs:summon/snail/cyan
execute if score $snail_type eden.technical matches 13 run return run function nice_mobs:summon/snail/gray
execute if score $snail_type eden.technical matches 14 run return run function nice_mobs:summon/snail/green
execute if score $snail_type eden.technical matches 15 run return run function nice_mobs:summon/snail/pink
execute if score $snail_type eden.technical matches 16 run return run function nice_mobs:summon/snail/purple
execute if score $snail_type eden.technical matches 17 run return run function nice_mobs:summon/snail/red
execute if score $snail_type eden.technical matches 18 run return run function nice_mobs:summon/snail/yellow