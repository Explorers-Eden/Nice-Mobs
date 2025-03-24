scoreboard players add @s nice_mobs.entity.timer 1

execute if score @s nice_mobs.entity.timer matches 1 on passengers run return run function animated_java:bloomer/variants/default/apply
execute if score @s nice_mobs.entity.timer matches 2 on passengers run return run function animated_java:bloomer/variants/default_flash/apply
execute if score @s nice_mobs.entity.timer matches 3 on passengers run return run function animated_java:bloomer/variants/default/apply
execute if score @s nice_mobs.entity.timer matches 4 on passengers run return run function animated_java:bloomer/variants/default_flash/apply
execute if score @s nice_mobs.entity.timer matches 5 on passengers run return run function animated_java:bloomer/variants/default/apply
execute if score @s nice_mobs.entity.timer matches 6 on passengers run return run function animated_java:bloomer/variants/default_flash/apply