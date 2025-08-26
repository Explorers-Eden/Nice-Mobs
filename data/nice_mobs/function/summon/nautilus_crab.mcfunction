execute store result score $nautilus_crab_type nice_mobs.technical run random value 1..10
execute if score $nautilus_crab_type nice_mobs.technical matches 1..5 run return run function nice_mobs:summon/nautilus_crab/red
execute if score $nautilus_crab_type nice_mobs.technical matches 6 run return run function nice_mobs:summon/nautilus_crab/blue
execute if score $nautilus_crab_type nice_mobs.technical matches 7 run return run function nice_mobs:summon/nautilus_crab/orange
execute if score $nautilus_crab_type nice_mobs.technical matches 8 run return run function nice_mobs:summon/nautilus_crab/pink
execute if score $nautilus_crab_type nice_mobs.technical matches 9 run return run function nice_mobs:summon/nautilus_crab/purple
execute if score $nautilus_crab_type nice_mobs.technical matches 10 run return run function nice_mobs:summon/nautilus_crab/green
