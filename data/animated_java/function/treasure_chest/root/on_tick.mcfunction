# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.treasure_chest.root] run return 0
execute if entity @s[tag=aj.treasure_chest.animation.walk.playing] run function animated_java:treasure_chest/animations/walk/zzz/on_tick
#execute at @s on passengers run rotate @s ~ ~