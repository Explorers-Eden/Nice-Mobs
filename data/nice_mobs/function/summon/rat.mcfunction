execute store result score $rat_type nice_mobs.technical run random value 1..7
execute if score $rat_type nice_mobs.technical matches 1..2 run return run function nice_mobs:summon/rat/brown
execute if score $rat_type nice_mobs.technical matches 3 run return run function nice_mobs:summon/rat/light_brown
execute if score $rat_type nice_mobs.technical matches 4 run return run function nice_mobs:summon/rat/gray
execute if score $rat_type nice_mobs.technical matches 5 run return run function nice_mobs:summon/rat/white
execute if score $rat_type nice_mobs.technical matches 6..7 run return run function nice_mobs:summon/rat/black
