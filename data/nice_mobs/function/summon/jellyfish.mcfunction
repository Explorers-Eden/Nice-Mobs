execute store result score $jellyfish_type eden.technical run random value 1..6
execute if score $jellyfish_type eden.technical matches 1 run function nice_mobs:summon/jellyfish/blue
execute if score $jellyfish_type eden.technical matches 2 run function nice_mobs:summon/jellyfish/cyan
execute if score $jellyfish_type eden.technical matches 3 run function nice_mobs:summon/jellyfish/orange
execute if score $jellyfish_type eden.technical matches 4 run function nice_mobs:summon/jellyfish/pink
execute if score $jellyfish_type eden.technical matches 5 run function nice_mobs:summon/jellyfish/white
execute if score $jellyfish_type eden.technical matches 6 run function nice_mobs:summon/jellyfish/yellow