tag @s remove not_hurt

scoreboard players set @s nice_mobs.entity.is_hurt 1
tag @s add is_hurt

execute as @s[tag=nice_mobs.butterfly.monarch] on passengers run return run function animated_java:butterfly/variants/default_hurt/apply
execute as @s[tag=nice_mobs.butterfly.tiger] on passengers run return run function animated_java:butterfly/variants/tiger_hurt/apply
execute as @s[tag=nice_mobs.butterfly.mourning_cloak] on passengers run return run function animated_java:butterfly/variants/mourning_cloak_hurt/apply

execute as @s[tag=nice_mobs.butterfly.blue] on passengers run return run function animated_java:butterfly/variants/blue_hurt/apply
execute as @s[tag=nice_mobs.butterfly.cyan] on passengers run return run function animated_java:butterfly/variants/cyan_hurt/apply
execute as @s[tag=nice_mobs.butterfly.green] on passengers run return run function animated_java:butterfly/variants/green_hurt/apply
execute as @s[tag=nice_mobs.butterfly.light_blue] on passengers run return run function animated_java:butterfly/variants/light_blue_hurt/apply
execute as @s[tag=nice_mobs.butterfly.pink] on passengers run return run function animated_java:butterfly/variants/pink_hurt/apply
execute as @s[tag=nice_mobs.butterfly.purple] on passengers run return run function animated_java:butterfly/variants/purple_hurt/apply
execute as @s[tag=nice_mobs.butterfly.red] on passengers run return run function animated_java:butterfly/variants/red_hurt/apply
execute as @s[tag=nice_mobs.butterfly.white] on passengers run return run function animated_java:butterfly/variants/white_hurt/apply
execute as @s[tag=nice_mobs.butterfly.yellow] on passengers run return run function animated_java:butterfly/variants/yellow_hurt/apply

execute as @s[tag=nice_mobs.wisp.arctic] on passengers run return run function animated_java:butterfly/variants/wisp_arctic_hurt/apply
execute as @s[tag=nice_mobs.wisp.blazing] on passengers run return run function animated_java:butterfly/variants/wisp_blazing_hurt/apply
execute as @s[tag=nice_mobs.wisp.ethereal] on passengers run return run function animated_java:butterfly/variants/wisp_ethereal_hurt/apply
execute as @s[tag=nice_mobs.wisp.flourishing] on passengers run return run function animated_java:butterfly/variants/wisp_flourishing_hurt/apply
execute as @s[tag=nice_mobs.wisp.tidal] on passengers run return run function animated_java:butterfly/variants/wisp_tidal_hurt/apply
execute as @s[tag=nice_mobs.wisp.twisted] on passengers run return run function animated_java:butterfly/variants/wisp_twisted_hurt/apply
execute as @s[tag=nice_mobs.wisp.umbral] on passengers run return run function animated_java:butterfly/variants/wisp_umbral_hurt/apply
execute as @s[tag=nice_mobs.wisp.void] on passengers run return run function animated_java:butterfly/variants/wisp_void_hurt/apply
execute as @s[tag=nice_mobs.wisp.watching] on passengers run return run function animated_java:butterfly/variants/wisp_watching_hurt/apply

execute as @s[tag=nice_mobs.moth.luna] on passengers run return run function animated_java:butterfly/variants/moth_luna_hurt/apply
execute as @s[tag=nice_mobs.moth.cecropia] on passengers run return run function animated_java:butterfly/variants/moth_cecropia_hurt/apply
