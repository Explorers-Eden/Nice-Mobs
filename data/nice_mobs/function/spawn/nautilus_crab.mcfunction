execute store result score $nautilus_crab_type eden.technical run random value 1..10
execute if score $nautilus_crab_type eden.technical matches 1..5 run return run function nice_mobs:spawn/nautilus_crab/red
execute if score $nautilus_crab_type eden.technical matches 6 run return run function nice_mobs:spawn/nautilus_crab/blue
execute if score $nautilus_crab_type eden.technical matches 7 run return run function nice_mobs:spawn/nautilus_crab/orange
execute if score $nautilus_crab_type eden.technical matches 8 run return run function nice_mobs:spawn/nautilus_crab/pink
execute if score $nautilus_crab_type eden.technical matches 9 run return run function nice_mobs:spawn/nautilus_crab/purple
execute if score $nautilus_crab_type eden.technical matches 10 run return run function nice_mobs:spawn/nautilus_crab/green
