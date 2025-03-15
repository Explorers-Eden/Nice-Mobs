tag @s remove not_hurt

#playsound minecraft:entity.chicken.hurt neutral @a ~ ~ ~ .3 .2

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt

execute as @s[tag=nice_mobs.tuff_golem.blue] on passengers run return run function animated_java:tuff_golem/variants/default_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.black] on passengers run return run function animated_java:tuff_golem/variants/black_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.brown] on passengers run return run function animated_java:tuff_golem/variants/brown_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.cyan] on passengers run return run function animated_java:tuff_golem/variants/cyan_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.gray] on passengers run return run function animated_java:tuff_golem/variants/gray_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.green] on passengers run return run function animated_java:tuff_golem/variants/green_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.light_blue] on passengers run return run function animated_java:tuff_golem/variants/light_blue_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.light_gray] on passengers run return run function animated_java:tuff_golem/variants/light_gray_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.lime] on passengers run return run function animated_java:tuff_golem/variants/lime_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.magenta] on passengers run return run function animated_java:tuff_golem/variants/magenta_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.moss] on passengers run return run function animated_java:tuff_golem/variants/moss_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.orange] on passengers run return run function animated_java:tuff_golem/variants/orange_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.pale_moss] on passengers run return run function animated_java:tuff_golem/variants/pale_moss_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.pink] on passengers run return run function animated_java:tuff_golem/variants/pink_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.purple] on passengers run return run function animated_java:tuff_golem/variants/purple_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.red] on passengers run return run function animated_java:tuff_golem/variants/red_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.white] on passengers run return run function animated_java:tuff_golem/variants/white_hurt/apply
execute as @s[tag=nice_mobs.tuff_golem.yellow] on passengers run return run function animated_java:tuff_golem/variants/yellow_hurt/apply