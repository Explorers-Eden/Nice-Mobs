# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=minecraft:item_display,tag=aj.hedgehog.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'hedgehog', 'function_path': 'animated_java:hedgehog/animations/hide/stop'}
tag @s remove aj.hedgehog.animation.hide.playing
scoreboard players set @s aj.hide.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:hedgehog/animations/hide/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only