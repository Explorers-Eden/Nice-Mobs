# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=minecraft:item_display,tag=aj.vulture.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'vulture', 'function_path': 'animated_java:vulture/animations/default/stop'}
tag @s remove aj.vulture.animation.default.playing
scoreboard players set @s aj.default.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:vulture/animations/default/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only