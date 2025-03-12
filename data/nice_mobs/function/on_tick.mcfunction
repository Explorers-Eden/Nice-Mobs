#remove dummy saddles
kill @e[type=item,predicate=eden:entity/is_dummy_saddle]

#remove oozing from snail
effect clear @e[type=zombie_horse,tag=nice_mobs.snail.vehicle] minecraft:oozing