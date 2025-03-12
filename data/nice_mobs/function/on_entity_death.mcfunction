schedule function nice_mobs:on_entity_death 2t

execute as @e[type=item_display,tag=aj.mushling.root,predicate=!eden:entity/has_zombie_horse_vehicle] at @s run function nice_mobs:mushling/behavior/death
execute as @e[type=item_display,tag=aj.penguin.root,predicate=!eden:entity/has_zombie_horse_vehicle] at @s run function nice_mobs:penguin/behavior/death
execute as @e[type=item_display,tag=aj.snail.root,predicate=!eden:entity/has_zombie_horse_vehicle] at @s run function nice_mobs:snail/behavior/death