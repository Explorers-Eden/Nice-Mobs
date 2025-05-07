execute store result score $skeleton_type eden.technical run random value 1..6

execute if score $skeleton_type eden.technical matches 1 run return run function nice_mobs:summon/skeleton_variant/cat
execute if score $skeleton_type eden.technical matches 2 run return run function nice_mobs:summon/skeleton_variant/chicken
execute if score $skeleton_type eden.technical matches 3 run return run function nice_mobs:summon/skeleton_variant/cow
execute if score $skeleton_type eden.technical matches 4 run return run function nice_mobs:summon/skeleton_variant/horse
execute if score $skeleton_type eden.technical matches 5 run return run function nice_mobs:summon/skeleton_variant/pig
execute if score $skeleton_type eden.technical matches 6 run return run function nice_mobs:summon/skeleton_variant/wolf