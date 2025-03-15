tag @s remove is_hurt

scoreboard players set @s nice_mobs.entity.is_hurt 0
tag @s add not_hurt

execute as @s[tag=nice_mobs.tuff_golem.blue] on passengers run return run function animated_java:tuff_golem/variants/default/apply
execute as @s[tag=nice_mobs.tuff_golem.black] on passengers run return run function animated_java:tuff_golem/variants/black/apply
execute as @s[tag=nice_mobs.tuff_golem.brown] on passengers run return run function animated_java:tuff_golem/variants/brown/apply
execute as @s[tag=nice_mobs.tuff_golem.cyan] on passengers run return run function animated_java:tuff_golem/variants/cyan/apply
execute as @s[tag=nice_mobs.tuff_golem.gray] on passengers run return run function animated_java:tuff_golem/variants/gray/apply
execute as @s[tag=nice_mobs.tuff_golem.green] on passengers run return run function animated_java:tuff_golem/variants/green/apply
execute as @s[tag=nice_mobs.tuff_golem.light_blue] on passengers run return run function animated_java:tuff_golem/variants/light_blue/apply
execute as @s[tag=nice_mobs.tuff_golem.light_gray] on passengers run return run function animated_java:tuff_golem/variants/light_gray/apply
execute as @s[tag=nice_mobs.tuff_golem.lime] on passengers run return run function animated_java:tuff_golem/variants/lime/apply
execute as @s[tag=nice_mobs.tuff_golem.magenta] on passengers run return run function animated_java:tuff_golem/variants/magenta/apply
execute as @s[tag=nice_mobs.tuff_golem.moss] on passengers run return run function animated_java:tuff_golem/variants/moss/apply
execute as @s[tag=nice_mobs.tuff_golem.orange] on passengers run return run function animated_java:tuff_golem/variants/orange/apply
execute as @s[tag=nice_mobs.tuff_golem.pale_moss] on passengers run return run function animated_java:tuff_golem/variants/pale_moss/apply
execute as @s[tag=nice_mobs.tuff_golem.pink] on passengers run return run function animated_java:tuff_golem/variants/pink/apply
execute as @s[tag=nice_mobs.tuff_golem.purple] on passengers run return run function animated_java:tuff_golem/variants/purple/apply
execute as @s[tag=nice_mobs.tuff_golem.red] on passengers run return run function animated_java:tuff_golem/variants/red/apply
execute as @s[tag=nice_mobs.tuff_golem.white] on passengers run return run function animated_java:tuff_golem/variants/white/apply
execute as @s[tag=nice_mobs.tuff_golem.yellow] on passengers run return run function animated_java:tuff_golem/variants/yellow/apply