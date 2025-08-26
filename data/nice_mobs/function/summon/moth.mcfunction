execute store result score $moth_type nice_mobs.technical run random value 1..2
execute if score $moth_type nice_mobs.technical matches 1 run function nice_mobs:summon/moth/luna
execute if score $moth_type nice_mobs.technical matches 2 run function nice_mobs:summon/moth/cecropia