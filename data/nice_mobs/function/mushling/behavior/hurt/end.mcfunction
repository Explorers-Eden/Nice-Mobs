
tag @s remove is_hurt

tag @s add not_hurt
scoreboard players set @s nice_mobs.entity.is_hurt 0

execute as @s[tag=nice_mobs.mushling.red] on passengers run return run function animated_java:mushling/variants/default/apply
execute as @s[tag=nice_mobs.mushling.brown] on passengers run return run function animated_java:mushling/variants/brown/apply