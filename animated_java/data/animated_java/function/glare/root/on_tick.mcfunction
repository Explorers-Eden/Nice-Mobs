# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.glare.root] run return 0
execute unless score @s aj.is_rig_loaded matches 1 run function #animated_java:global/root/on_load
function #animated_java:glare/as_root/pre_tick
execute if entity @s[tag=aj.glare.animation.idle.playing] run function animated_java:glare/animations/idle/zzz/on_tick
execute if entity @s[tag=aj.glare.animation.walk.playing] run function animated_java:glare/animations/walk/zzz/on_tick
execute at @s on passengers run rotate @s ~ ~
function #animated_java:glare/as_root/post_tick