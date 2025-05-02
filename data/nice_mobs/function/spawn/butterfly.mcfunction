execute store result score $butterfly_type eden.technical run random value 1..10
execute if score $butterfly_type eden.technical matches 1 run function nice_mobs:spawn/butterfly/blue
execute if score $butterfly_type eden.technical matches 2 run function nice_mobs:spawn/butterfly/cyan
execute if score $butterfly_type eden.technical matches 3 run function nice_mobs:spawn/butterfly/green
execute if score $butterfly_type eden.technical matches 4 run function nice_mobs:spawn/butterfly/light_blue
execute if score $butterfly_type eden.technical matches 5 run function nice_mobs:spawn/butterfly/pink
execute if score $butterfly_type eden.technical matches 6 run function nice_mobs:spawn/butterfly/purple
execute if score $butterfly_type eden.technical matches 7 run function nice_mobs:spawn/butterfly/red
execute if score $butterfly_type eden.technical matches 8 run function nice_mobs:spawn/butterfly/white
execute if score $butterfly_type eden.technical matches 9 run function nice_mobs:spawn/butterfly/yellow

execute if score $butterfly_type eden.technical matches 10 run function nice_mobs:spawn/butterfly/monarch