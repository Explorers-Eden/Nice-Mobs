# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.cruncher.root] run return 0
execute if entity @s[tag=aj.cruncher.animation.idle.playing] run function animated_java:cruncher/animations/idle/zzz/on_tick
execute if entity @s[tag=aj.cruncher.animation.walk.playing] run function animated_java:cruncher/animations/walk/zzz/on_tick
execute if entity @s[tag=aj.cruncher.animation.fall.playing] run function animated_java:cruncher/animations/fall/zzz/on_tick
execute if entity @s[tag=aj.cruncher.animation.eat.playing] run function animated_java:cruncher/animations/eat/zzz/on_tick
#execute at @s on passengers run rotate @s ~ ~