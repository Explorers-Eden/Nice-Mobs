tag @s remove is_hurt

scoreboard players set @s nice_mobs.entity.is_hurt 0
tag @s add not_hurt

execute as @s[tag=nice_mobs.butterfly.monarch] on passengers run return run function animated_java:butterfly/variants/default/apply
execute as @s[tag=nice_mobs.butterfly.tiger] on passengers run return run function animated_java:butterfly/variants/tiger/apply
execute as @s[tag=nice_mobs.butterfly.mourning_cloak] on passengers run return run function animated_java:butterfly/variants/mourning_cloak/apply

execute as @s[tag=nice_mobs.butterfly.blue] on passengers run return run function animated_java:butterfly/variants/blue/apply
execute as @s[tag=nice_mobs.butterfly.cyan] on passengers run return run function animated_java:butterfly/variants/cyan/apply
execute as @s[tag=nice_mobs.butterfly.green] on passengers run return run function animated_java:butterfly/variants/green/apply
execute as @s[tag=nice_mobs.butterfly.light_blue] on passengers run return run function animated_java:butterfly/variants/light_blue/apply
execute as @s[tag=nice_mobs.butterfly.pink] on passengers run return run function animated_java:butterfly/variants/pink/apply
execute as @s[tag=nice_mobs.butterfly.purple] on passengers run return run function animated_java:butterfly/variants/purple/apply
execute as @s[tag=nice_mobs.butterfly.red] on passengers run return run function animated_java:butterfly/variants/red/apply
execute as @s[tag=nice_mobs.butterfly.white] on passengers run return run function animated_java:butterfly/variants/white/apply
execute as @s[tag=nice_mobs.butterfly.yellow] on passengers run return run function animated_java:butterfly/variants/yellow/apply

execute as @s[tag=nice_mobs.wisp.arctic] on passengers run return run function animated_java:butterfly/variants/wisp_arctic/apply
execute as @s[tag=nice_mobs.wisp.blazing] on passengers run return run function animated_java:butterfly/variants/wisp_blazing/apply
execute as @s[tag=nice_mobs.wisp.ethereal] on passengers run return run function animated_java:butterfly/variants/wisp_ethereal/apply
execute as @s[tag=nice_mobs.wisp.flourishing] on passengers run return run function animated_java:butterfly/variants/wisp_flourishing/apply
execute as @s[tag=nice_mobs.wisp.tidal] on passengers run return run function animated_java:butterfly/variants/wisp_tidal/apply
execute as @s[tag=nice_mobs.wisp.twisted] on passengers run return run function animated_java:butterfly/variants/wisp_twisted/apply
execute as @s[tag=nice_mobs.wisp.umbral] on passengers run return run function animated_java:butterfly/variants/wisp_umbral/apply
execute as @s[tag=nice_mobs.wisp.void] on passengers run return run function animated_java:butterfly/variants/wisp_void/apply
execute as @s[tag=nice_mobs.wisp.watching] on passengers run return run function animated_java:butterfly/variants/wisp_watching/apply

execute as @s[tag=nice_mobs.moth.luna] on passengers run return run function animated_java:butterfly/variants/moth_luna/apply
execute as @s[tag=nice_mobs.moth.cecropia] on passengers run return run function animated_java:butterfly/variants/moth_cecropia/apply
