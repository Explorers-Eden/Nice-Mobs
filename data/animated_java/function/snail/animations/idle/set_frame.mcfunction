# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=minecraft:item_display,tag=aj.snail.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'snail', 'function_path': 'animated_java:snail/animations/idle/set_frame'}
data remove storage aj:temp args
$execute store result storage aj:temp args.frame int 1 run scoreboard players set @s aj.idle.frame $(frame)
execute at @s run function animated_java:snail/animations/idle/zzz/set_frame with storage aj:temp args